import { NextRequest, NextResponse } from 'next/server';

const DIFY_WORKFLOW_ENDPOINT = process.env.OCR_API_ENDPOINT; // Using OCR_API_ENDPOINT for workflow URL
const DIFY_UPLOAD_ENDPOINT = process.env.OCR_API_ENDPOINT?.replace('/workflows/run', '/files/upload'); // Derive upload URL
const DIFY_API_KEY = process.env.OCR_API_KEY;

export async function POST(request: NextRequest) {
  const logPrefix = '[API /api/ocr/run-dify]';
  console.log(`${logPrefix} Received POST request.`);

  // --- Configuration Check --- 
  if (!DIFY_WORKFLOW_ENDPOINT || !DIFY_UPLOAD_ENDPOINT || !DIFY_API_KEY || DIFY_API_KEY === 'YOUR_OCR_API_KEY_HERE') {
    console.error(`${logPrefix} Dify API endpoint or key is not configured in environment variables.`);
    return NextResponse.json({ error: 'Dify service configuration missing on server.' }, { status: 500 });
  }

  try {
    // --- Get Data from Frontend --- 
    const formData = await request.formData();
    const file = formData.get('image') as File | null;
    const userIdentifier = formData.get('user') as string || 'unknown-user';

    if (!file) {
      console.error(`${logPrefix} No image file found in form data.`);
      return NextResponse.json({ error: 'No image file provided.' }, { status: 400 });
    }

    if (!file.type.startsWith('image/')) {
      console.error(`${logPrefix} Uploaded file is not an image: ${file.type}`);
      return NextResponse.json({ error: 'Uploaded file is not a valid image.' }, { status: 400 });
    }

    console.log(`${logPrefix} Step 1: Uploading image to Dify for user: ${userIdentifier}`);

    // --- Step 1: Call Dify File Upload API --- 
    const uploadFormData = new FormData();
    uploadFormData.append('file', file);
    uploadFormData.append('user', userIdentifier);

    const uploadResponse = await fetch(DIFY_UPLOAD_ENDPOINT, {
      method: 'POST',
      headers: {
        'Authorization': `Bearer ${DIFY_API_KEY}`,
        // Content-Type is set automatically by fetch for FormData
      },
      body: uploadFormData,
    });

    console.log(`${logPrefix} Dify Upload API response status: ${uploadResponse.status}`);

    if (!uploadResponse.ok) {
      const errorText = await uploadResponse.text();
      console.error(`${logPrefix} Dify Upload API error: ${uploadResponse.status}`, errorText);
      return NextResponse.json({ error: `Dify file upload failed: ${uploadResponse.statusText}`, details: errorText }, { status: uploadResponse.status });
    }

    const uploadResult = await uploadResponse.json();
    const uploadFileId = uploadResult?.id;

    if (!uploadFileId) {
      console.error(`${logPrefix} Failed to extract upload_file_id from Dify upload response:`, uploadResult);
      return NextResponse.json({ error: 'Could not get file ID from Dify upload response.' }, { status: 500 });
    }

    console.log(`${logPrefix} Step 1 Success: Got upload_file_id: ${uploadFileId}`);
    console.log(`${logPrefix} Step 2: Calling Dify Workflow API.`);

    // --- Step 2: Call Dify Workflow API --- 
    // Match payload to Dify's observed structure for single file input
    const workflowPayload = {
      inputs: {
        // Use "image" as the key based on previous errors
        image: { // Send the object directly, not in an array
          type: "image", 
          transfer_method: "local_file", 
          upload_file_id: uploadFileId, // Use the ID obtained from the upload
          url: "" // Add empty url key as observed
        }
        // Add other input variables required by your specific workflow here
      },
      response_mode: "streaming",
      user: userIdentifier
    };

    // Log the payload before sending to the workflow endpoint
    console.log(`${logPrefix} Workflow Payload:`, JSON.stringify(workflowPayload, null, 2));

    const workflowResponse = await fetch(DIFY_WORKFLOW_ENDPOINT, {
      method: 'POST',
      headers: {
        'Authorization': `Bearer ${DIFY_API_KEY}`,
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(workflowPayload),
    });

    console.log(`${logPrefix} Dify Workflow API response status: ${workflowResponse.status}`);

    if (!workflowResponse.ok || !workflowResponse.body) {
      const errorText = await workflowResponse.text();
      console.error(`${logPrefix} Dify Workflow API error: ${workflowResponse.status}`, errorText);
      return NextResponse.json({ error: `Dify workflow execution failed: ${workflowResponse.statusText}`, details: errorText }, { status: workflowResponse.status });
    }

    // --- Step 3: Stream Response to Frontend --- 
    console.log(`${logPrefix} Step 2 Success: Streaming workflow response back to client.`);
    return new NextResponse(workflowResponse.body, {
      status: 200,
      headers: {
        'Content-Type': 'text/event-stream; charset=utf-8',
        'Cache-Control': 'no-cache',
        'Connection': 'keep-alive',
      }
    });

  } catch (error) {
    console.error(`${logPrefix} Error in Dify OCR route:`, error);
    return NextResponse.json({ error: 'An unexpected error occurred during OCR processing.' }, { status: 500 });
  }
} 