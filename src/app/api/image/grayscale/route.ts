import { NextResponse } from 'next/server';
import sharp from 'sharp';

const MAX_FILE_SIZE_KB = 400;
const COMPRESSION_QUALITY = 80; // JPEG quality setting (0-100)

export async function POST(request: Request) {
  const logPrefix = '[API /api/image/grayscale]';
  console.log(`${logPrefix} Received POST request.`);

  try {
    const formData = await request.formData();
    const file = formData.get('image') as File | null;

    if (!file) {
      console.error(`${logPrefix} No image file found in form data.`);
      return NextResponse.json({ error: 'No image file provided.' }, { status: 400 });
    }

    // Check if the file is an image (basic check using type)
    if (!file.type.startsWith('image/')) {
      console.error(`${logPrefix} Uploaded file is not an image: ${file.type}`);
      return NextResponse.json({ error: 'Uploaded file is not a valid image.' }, { status: 400 });
    }

    console.log(`${logPrefix} Processing image: ${file.name} (${file.type})`);

    const inputBuffer = Buffer.from(await file.arrayBuffer());

    // Generate initial grayscale buffer
    let outputBuffer = await sharp(inputBuffer)
      .grayscale()
      .toBuffer();

    console.log(`${logPrefix} Initial grayscale size: ${Math.round(outputBuffer.length / 1024)} KB`);

    let outputContentType = file.type === 'image/jpeg' ? 'image/jpeg' : 'image/png'; // Default to PNG if not JPEG
    let appliedCompression = false;

    // Check if compression is needed
    if (outputBuffer.length > MAX_FILE_SIZE_KB * 1024) {
      console.log(`${logPrefix} Image size exceeds ${MAX_FILE_SIZE_KB} KB. Applying compression...`);
      outputBuffer = await sharp(outputBuffer) // Process the grayscale buffer
        .jpeg({ quality: COMPRESSION_QUALITY }) // Compress using JPEG
        .toBuffer();
      outputContentType = 'image/jpeg'; // Output is now JPEG
      appliedCompression = true;
      console.log(`${logPrefix} Compressed size: ${Math.round(outputBuffer.length / 1024)} KB (Quality: ${COMPRESSION_QUALITY})`);
    } else {
       console.log(`${logPrefix} Image size is within limit. No compression applied.`);
    }

    // Return the processed image buffer
    return new NextResponse(outputBuffer, {
      status: 200,
      headers: {
        'Content-Type': outputContentType,
        // Add a header to indicate if compression was applied (optional, for client info)
        'X-Compression-Applied': appliedCompression ? 'true' : 'false', 
        'Content-Disposition': `inline; filename="grayscale_${file.name}"`, 
      },
    });

  } catch (error) {
    console.error(`${logPrefix} Error processing image:`, error);
    // Check for specific sharp errors if needed
    let errorMessage = 'Failed to process image.';
    if (error instanceof Error) {
      errorMessage = error.message;
    }
    return NextResponse.json({ error: 'An error occurred during image processing.', details: errorMessage }, { status: 500 });
  }
} 