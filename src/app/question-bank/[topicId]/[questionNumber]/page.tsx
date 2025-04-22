"use client";

import { useState, useEffect, ChangeEvent, useRef, useCallback } from 'react';
import { useRouter } from 'next/navigation';
import Link from 'next/link';
import Image from 'next/image';
import MathJaxContent from '@/components/MathJaxContent';
import { use } from 'react';
import supabase from '@/utils/supabase';

// ByteMD imports
import { Editor, EditorProps } from '@bytemd/react';
import gfm from '@bytemd/plugin-gfm';
import math from '@bytemd/plugin-math';
import 'bytemd/dist/index.css'; // Base ByteMD styles
import 'katex/dist/katex.css'; // KaTeX styles for math plugin
import 'github-markdown-css/github-markdown.css'; // GitHub styles for preview
// Optional: Add a theme CSS, e.g., github
// import 'github-markdown-css/github-markdown.css';

// Define interfaces for the data structure received from the API
interface Question {
  id: number;
  question_number: number;
  content: string;
  latex_content: string;
  language: string;
  topic_id: number;
}

interface Answer {
  id: number;
  content: string;
  latex_content: string;
  question_id: number;
}

interface Topic {
  id: number;
  name: string;
  display_name: string;
  chapter: string;
}

interface ApiResponseData {
  topic: Topic;
  question_english: Question | null;
  question_chinese: Question | null;
  answer: Answer | null;
  totalQuestions: number;
}

// Define a type for Window with MathJax for this component
interface WindowWithMathJax extends Window {
  MathJax?: {
    typeset?: () => void;
    Hub?: {
      Queue: (args: unknown[]) => void;
    };
  };
}

// Define the type for params
type Params = Promise<{ topicId: string; questionNumber: string }>;

// Wrapper component to handle the params Promise
export default function QuestionPageWrapper({ params }: { params: Params }) {
  const unwrappedParams = use(params);
  return <QuestionPage topicId={unwrappedParams.topicId} questionNumber={unwrappedParams.questionNumber} />;
}

// Inner component receiving unwrapped props
function QuestionPage({ topicId, questionNumber }: { topicId: string; questionNumber: string }) {
  const router = useRouter();
  const topicIdNum = parseInt(topicId);
  const currentQuestionNumber = parseInt(questionNumber);

  // State for the fetched data
  const [topic, setTopic] = useState<Topic | null>(null);
  const [questionEnglish, setQuestionEnglish] = useState<Question | null>(null);
  const [questionChinese, setQuestionChinese] = useState<Question | null>(null);
  const [answer, setAnswer] = useState<Answer | null>(null);
  const [totalQuestions, setTotalQuestions] = useState<number>(0);
  
  // State for UI control
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [showAnswer, setShowAnswer] = useState(false);
  const [language, setLanguage] = useState<'English' | 'Chinese'>('English');

  // State for Markdown Editor
  const [editorContent, setEditorContent] = useState<string>("");
  const [editorKeyCounter, setEditorKeyCounter] = useState<number>(0); // State for forcing editor remount
  
  // Ref to store cursor position and insertion information
  const editorRef = useRef<any>(null);
  const pendingOcrRef = useRef<{
    file: File | null;
    imageUrl: string;
    insertionPoint: number | null;
  }>({
    file: null,
    imageUrl: '',
    insertionPoint: null
  });

  // State to track image uploads and their positions in the content
  const [imagePositionMap, setImagePositionMap] = useState<Map<string, number>>(new Map());

  // 使用ref来跟踪最近插入的图片
  const lastInsertedImageRef = useRef<{
    url: string;
    alt: string;
    position: string;
  } | null>(null);

  // Configure ByteMD plugins
  const plugins = [
    gfm(),
    math({ katexOptions: { output: 'html' } }) // Enable math plugin with KaTeX
    // Add other plugins if needed
  ];

  // Fetch data from the API endpoint
  useEffect(() => {
    async function fetchDataFromApi() {
      // Only refetch if topicId or questionNumber changes
      setLoading(true);
      setError(null);
      setShowAnswer(false); // Hide answer when fetching new question
      const logPrefix = `[Page /question-bank/${topicIdNum}/${currentQuestionNumber}]`;
      console.log(`${logPrefix} Fetching data from API...`);
      
      try {
        const response = await fetch(`/api/question/${topicIdNum}/${currentQuestionNumber}`);

        if (!response.ok) {
          let errorDetails = `HTTP error! status: ${response.status}`;
          try {
            const errorJson = await response.json();
            errorDetails = errorJson.error || errorJson.message || errorDetails;
          } catch {
            console.warn(`${logPrefix} Could not parse error response JSON.`);
          }
           // Special handling for 404 (invalid question number)
           if (response.status === 404) {
             errorDetails = `Question ${currentQuestionNumber} not found for this topic. ${errorDetails}`; 
           }
          throw new Error(errorDetails);
        }

        const data: ApiResponseData = await response.json();
        console.log(`${logPrefix} Data fetched successfully from API.`);

        // Update state with fetched data
        setTopic(data.topic);
        setQuestionEnglish(data.question_english);
        setQuestionChinese(data.question_chinese);
        setAnswer(data.answer);
        setTotalQuestions(data.totalQuestions);

        // Explicitly request MathJax processing after state update
        requestMathJaxReprocess(); 

      } catch (err) {
        console.error(`${logPrefix} Error fetching data from API:`, err);
        setError(err instanceof Error ? err.message : 'An unknown error occurred while fetching question data.');
        // Clear potentially stale data on error
        setTopic(null);
        setQuestionEnglish(null);
        setQuestionChinese(null);
        setAnswer(null);
        setTotalQuestions(0);
      } finally {
        console.log(`${logPrefix} Finished API data fetch attempt.`);
        setLoading(false);
      }
    }

    if (!isNaN(topicIdNum) && !isNaN(currentQuestionNumber)) {
        fetchDataFromApi();
    }
    // Dependency array: only re-run when topicId or questionNumber changes
  }, [topicIdNum, currentQuestionNumber]);

  // --- Helper Functions --- 

  // Helper function to request MathJax reprocessing (useCallback to stabilize reference)
  // Define this *before* functions that depend on it
  const requestMathJaxReprocess = useCallback(() => {
    setTimeout(() => {
      const MathJax = (window as WindowWithMathJax).MathJax;
      if (MathJax && typeof MathJax.typeset === 'function') {
        try {
          console.log('[Page] Requesting MathJax typeset...');
          MathJax.typeset();
        } catch (error) {
          console.error('[Page] Error reprocessing MathJax:', error);
        }
      }
    }, 50); // Short delay to allow potential DOM updates
  }, []); // Empty dependency array, function doesn't depend on state/props

  // --- Event Handlers --- 

  // Switch language (client-side toggle)
  const toggleLanguage = () => {
    setLanguage(prev => prev === 'English' ? 'Chinese' : 'English');
    requestMathJaxReprocess(); 
  };

  // Determine the currently selected question based on language state
  const currentQuestion = language === 'English' ? questionEnglish : questionChinese;

  // Go to next question
  const goToNextQuestion = () => {
    if (currentQuestionNumber < totalQuestions) {
      router.push(`/question-bank/${topicIdNum}/${currentQuestionNumber + 1}`);
    }
  };

  // Go to previous question
  const goToPrevQuestion = () => {
    if (currentQuestionNumber > 1) {
      router.push(`/question-bank/${topicIdNum}/${currentQuestionNumber - 1}`);
    }
  };

  // Show or hide answer
  const toggleShowAnswer = () => {
    setShowAnswer(prev => !prev);
    requestMathJaxReprocess(); 
  };

  // --- OCR & Editor Handlers --- 

  // Refactored Trigger OCR process: Takes callbacks, accumulates text
  const triggerOcrProcess = useCallback(async (
      fileToProcess: File,
      options: { 
          onError: (errorMessage: string) => void,
          onStart?: () => void,
          onFinish: (fullText: string) => void,
      }
  ) => {
    options.onStart?.();
    requestMathJaxReprocess(); 

    const formData = new FormData();
    formData.append('image', fileToProcess); 
    formData.append('user', 'cuhk-exam-user-editor'); 
    
    let accumulatedText = ""; // Accumulate text here

    try {
      console.log('[Page OCR Trigger] Calling backend route /api/ocr/run-dify');
      const response = await fetch('/api/ocr/run-dify', {
        method: 'POST',
        body: formData,
      });

      if (!response.ok || !response.body) {
        let errorDetails = `Error: ${response.status}`;
        try {
          const errorJson = await response.json();
          errorDetails = `${errorDetails} - ${errorJson.error || errorJson.details || 'Unknown backend error'}`;
        } catch { /* Ignore */ }
        throw new Error(errorDetails);
      }

      const streamReader = response.body.getReader();
      const decoder = new TextDecoder('utf-8');
      let buffer = '';
      while (true) {
        const { value, done } = await streamReader.read();
        if (done) {
          console.log('[Page OCR Trigger] Stream finished.');
          break;
        }
        
        buffer += decoder.decode(value, { stream: true });
        const lines = buffer.split('\n\n');
        buffer = lines.pop() || '';
        for (const line of lines) {
          if (line.startsWith('data: ')) {
            try {
              const jsonData = JSON.parse(line.substring(6));
              let chunk = '';
              if (jsonData.event === 'text_chunk' && jsonData.data?.text) {
                chunk = jsonData.data.text;
              }
              if (chunk) {
                accumulatedText += chunk; // Accumulate internally
              }
            } catch (e) {
              console.warn('[Page OCR Trigger] Failed to parse SSE JSON:', line, e);
            }
          }
        }
      }
      // Process final buffer chunk
      if (buffer.startsWith('data: ')) {
        try {
          const jsonData = JSON.parse(buffer.substring(6));
          let chunk = '';
          if (jsonData.event === 'text_chunk' && jsonData.data?.text) {
            chunk = jsonData.data.text;
          }
          if (chunk) accumulatedText += chunk; // Accumulate final chunk
        } catch (e) {
          console.warn('[Page OCR Trigger] Failed to parse final SSE JSON buffer:', buffer, e);
        }
      }
      
      // Call onFinish with the complete text *before* final MathJax
      options.onFinish(accumulatedText);
      console.log('[Page OCR Trigger] Requesting MathJax reprocess after stream finished.');
      requestMathJaxReprocess();

    } catch (err) {
      const errorMessage = err instanceof Error ? err.message : 'An unknown error occurred.';
      console.error('[Page OCR Trigger] Error running OCR:', err);
      // Call the onError callback
      options.onError(errorMessage);
    } finally {
       requestMathJaxReprocess(); // Keep final reprocess just in case
    }
  }, [requestMathJaxReprocess]);

  // Handle editor change event
  const handleEditorChange = useCallback((value: string) => {
    // Update content state
    setEditorContent(value);
    
    // Check if there is a pending OCR and if image URL appears in the new content
    const { file, imageUrl } = pendingOcrRef.current;
    
    if (file && imageUrl && value.includes(imageUrl)) {
      console.log(`[ByteMD] Detected inserted image URL in editor content: ${imageUrl}`);
      
      // Find the position where the image URL appears
      const imageUrlIndex = value.indexOf(imageUrl);
      
      // Find the end of the image markdown (the closing parenthesis after the URL)
      let insertionPoint = value.indexOf(')', imageUrlIndex);
      if (insertionPoint === -1) {
        insertionPoint = imageUrlIndex + imageUrl.length;
      } else {
        insertionPoint += 1; // Insert after the closing parenthesis
      }
      
      // Look for the end of the line or a newline character after the image
      let lineEndIndex = value.indexOf('\n', insertionPoint);
      if (lineEndIndex !== -1) {
        insertionPoint = lineEndIndex; // Insert at the end of the line
      }
      
      console.log(`[ByteMD] Setting insertion point for OCR at position: ${insertionPoint}`);
      console.log(`[ByteMD] Text around insertion point: "${value.substring(Math.max(0, insertionPoint - 20), insertionPoint)}|INSERTION|${value.substring(insertionPoint, Math.min(value.length, insertionPoint + 20))}"`);
      
      // Store the insertion point
      pendingOcrRef.current.insertionPoint = insertionPoint;
      
      // Start OCR processing
      const fileToProcess = file;
      pendingOcrRef.current.file = null; // Clear the pending file to avoid duplicate processing
      
      triggerOcrProcess(fileToProcess, {
        onStart: () => {
          console.log(`[Editor OCR] OCR started for ${fileToProcess.name}`);
        },
        onError: (errorMessage: string) => {
          console.error(`[Editor OCR] OCR Error: ${errorMessage}`);
          
          if (pendingOcrRef.current.insertionPoint !== null) {
            const point = pendingOcrRef.current.insertionPoint;
            const newContent = value.slice(0, point) + 
                              `\n\n**OCR Error:** ${errorMessage}\n\n` + 
                              value.slice(point);
            setEditorContent(newContent);
            requestMathJaxReprocess();
          } else {
            // Fallback to appending at the end if no insertion point
            setEditorContent(value + `\n\n**OCR Error:** ${errorMessage}\n\n`);
            requestMathJaxReprocess();
          }
        },
        onFinish: (fullText: string) => {
          console.log(`[Editor OCR] OCR completed with ${fullText.length} characters`);
          
          if (pendingOcrRef.current.insertionPoint !== null) {
            const point = pendingOcrRef.current.insertionPoint;
            
            // Make sure we have proper spacing - add newlines if needed
            let prefix = "\n\n";
            let suffix = "\n\n";
            
            // Check if we already have newlines at insertion point
            const beforeText = value.slice(Math.max(0, point - 2), point);
            const afterText = value.slice(point, Math.min(value.length, point + 2));
            
            if (beforeText.endsWith("\n\n")) prefix = "";
            else if (beforeText.endsWith("\n")) prefix = "\n";
            
            if (afterText.startsWith("\n\n")) suffix = "";
            else if (afterText.startsWith("\n")) suffix = "\n";
            
            const newContent = value.slice(0, point) + 
                              `${prefix}${fullText}${suffix}` + 
                              value.slice(point);
                              
            console.log(`[Editor OCR] Inserting at position ${point} with added prefix="${prefix}" and suffix="${suffix}"`);
            
            setEditorContent(newContent);
            setEditorKeyCounter(prev => prev + 1); // Force remount to reprocess math
          } else {
            // Fallback to appending at the end if no insertion point
            setEditorContent(value + `\n\n${fullText}\n\n`);
            setEditorKeyCounter(prev => prev + 1);
          }
        }
      });
    }
  }, [triggerOcrProcess, requestMathJaxReprocess]);

  // Handle image uploads from the ByteMD editor (Completely revised approach)
  const handleEditorImageUpload = useCallback(async (files: File[]) => {
    const results: { url: string; alt: string; title: string }[] = [];
    const bucketName = 'markdown-images'; 
    
    console.log(`[Editor Upload] Received ${files.length} file(s) to upload.`);

    // We'll only process one file for OCR at a time
    // If multiple files are uploaded, we'll just use the last one
    let lastFileUploaded: File | null = null;
    let lastFileUrl: string = '';

    for (const file of files) {
      const fileExt = file.name.split('.').pop();
      const uniqueFileName = `${Date.now()}-${Math.random().toString(36).substring(2)}.${fileExt}`;
      const filePath = `${uniqueFileName}`;

      try {
        console.log(`[Editor Upload] Uploading ${file.name} to Supabase bucket '${bucketName}' as ${filePath}...`);
        const { data: uploadData, error: uploadError } = await supabase.storage
          .from(bucketName)
          .upload(filePath, file, { 
             cacheControl: '3600', 
             upsert: false 
          });

        if (uploadError) {
          console.error(`[Editor Upload] Supabase upload error for ${file.name}:`, uploadError);
          continue; // Skip this file
        }

        console.log(`[Editor Upload] Upload successful for ${file.name}. Getting public URL...`);

        // Get public URL
        const { data: urlData } = supabase.storage
          .from(bucketName)
          .getPublicUrl(filePath);
        
        if (!urlData?.publicUrl) {
           console.error(`[Editor Upload] Could not get public URL for ${filePath}.`);
           continue;
        }

        const publicUrl = urlData.publicUrl;
        console.log(`[Editor Upload] Public URL for ${file.name}: ${publicUrl}`);
        
        // Store information about this file upload
        lastFileUploaded = file;
        lastFileUrl = publicUrl;
        
        // Create result object for ByteMD
        results.push({
          url: publicUrl,
          alt: file.name,
          title: file.name,
        });

      } catch (error) {
        console.error(`[Editor Upload] General error uploading ${file.name}:`, error);
      }
    }

    console.log(`[Editor Upload] Finished processing ${files.length} file(s). Returning ${results.length} URLs.`);

    // Store the last uploaded file info in the ref for later processing
    // We'll wait for the onChange event to detect where the image was inserted
    if (lastFileUploaded && lastFileUrl) {
      console.log(`[Editor Upload] Setting pending OCR for ${lastFileUploaded.name}`);
      pendingOcrRef.current = {
        file: lastFileUploaded,
        imageUrl: lastFileUrl,
        insertionPoint: null
      };
    }

    return results; // Return URLs for ByteMD to insert into the editor
  }, []);

  // --- JSX Rendering --- 
  return (
    <div className="flex min-h-screen flex-col">
      {/* Header */}
      <header className="bg-red-700 text-white shadow-md">
        <div className="container mx-auto px-4 py-4 flex justify-between items-center">
          <div className="flex items-center gap-2">
            <Link href="/" className="text-xl font-bold">CUHK Online Exam Platform</Link>
          </div>
          <nav>
            <ul className="flex space-x-6">
              <li><Link href="/question-bank" className="hover:underline font-semibold">Question Bank</Link></li>
              <li><Link href="/login" className="hover:underline">Login</Link></li>
            </ul>
          </nav>
        </div>
      </header>

      {/* Main Content */}
      <main className="flex-grow container mx-auto px-4 py-8">
        <div className="max-w-4xl mx-auto">
          {loading ? (
            <div className="flex justify-center items-center py-12">
              <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-red-700"></div>
            </div>
          ) : error ? (
            <div className="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded mb-4">
              <p className="font-bold">Error loading question:</p>
              <p>{error}</p>
              <Link href="/question-bank" className="mt-2 inline-block text-red-700 underline">
                Back to Question Bank List
              </Link>
            </div>
          ) : !topic || !currentQuestion ? (
             <div className="bg-yellow-100 border border-yellow-400 text-yellow-700 px-4 py-3 rounded mb-4">
                <p>Could not load question details. Please try again or return to the list.</p>
                <Link href="/question-bank" className="mt-2 inline-block text-yellow-700 underline">
                  Back to Question Bank List
                </Link>
             </div>
          ) : (
            <>
              {/* Title and Navigation */}
              <div className="flex justify-between items-center mb-6">
                <div>
                  <h1 className="text-2xl font-bold">{topic.display_name}</h1>
                  <p className="text-gray-600">
                    Question {currentQuestionNumber} / {totalQuestions}
                  </p>
                </div>
                <div className="flex items-center gap-4">
                  <button
                    onClick={toggleLanguage}
                    className="text-red-600 border border-red-600 px-3 py-1 rounded hover:bg-red-50"
                  >
                    {language === 'English' ? 'Switch to Chinese' : 'Switch to English'}
                  </button>
                  <Link
                    href="/question-bank"
                    className="text-gray-600 border border-gray-300 px-3 py-1 rounded hover:bg-gray-50"
                  >
                    Back to List
                  </Link>
                </div>
              </div>

              {/* Question Content */}
              <div className="bg-white p-6 rounded-lg shadow-md mb-6">
                <h2 className="text-xl font-semibold mb-4">Question {currentQuestionNumber}</h2>
                 {/* Use currentQuestion which is derived from language state */}
                <div className="py-2 text-lg">
                  <MathJaxContent 
                    content={currentQuestion.latex_content} 
                    id={`question-${currentQuestion.id}`}
                    key={`question-${currentQuestion.id}-${language}`} // Key changes on language swap to force re-render
                  />
                </div>
              </div>

              {/* Answer Area */}
              <div className="bg-white p-6 rounded-lg shadow-md mb-6">
                <div className="flex justify-between items-center mb-4">
                  <h2 className="text-xl font-semibold">Answer</h2>
                  <button
                    onClick={toggleShowAnswer}
                    className="text-white bg-red-600 hover:bg-red-700 px-4 py-2 rounded-md"
                    disabled={!answer} // Disable if no answer exists
                  >
                    {showAnswer ? 'Hide Answer' : 'Show Answer'}
                  </button>
                </div>
                
                {showAnswer && answer ? (
                  <div className="py-2">
                    <MathJaxContent 
                      content={answer.latex_content} 
                      id={`answer-${answer.id}`}
                      key={`answer-${answer.id}`} // Key ensures re-render if needed
                    />
                  </div>
                ) : (
                  <div className="py-8 text-center text-gray-500">
                    {showAnswer ? 'No answer available' : 'Click "Show Answer" to view the solution'}
                  </div>
                )}
              </div>

              {/* OCR Section */}
              <div className="bg-white p-6 rounded-lg shadow-md mb-6 border-t-4 border-red-200">
                <h2 className="text-xl font-semibold mb-4">Your Workspace / Answer</h2>

                {/* ByteMD Editor */} 
                <div className="mb-6 bytemd-container"> 
                  <Editor
                    value={editorContent}
                    plugins={plugins}
                    onChange={handleEditorChange}
                    uploadImages={handleEditorImageUpload} 
                    // Update key to include the counter
                    key={`editor-${topicIdNum}-${currentQuestionNumber}-${editorKeyCounter}`} 
                    // ByteMD's Editor doesn't have an editorRef prop, so we'll use a ref callback approach instead
                  />
                </div>

              </div>

              {/* Navigation Buttons */}
              <div className="flex justify-between mt-8">
                <button
                  onClick={goToPrevQuestion}
                  disabled={currentQuestionNumber <= 1}
                  className={`px-4 py-2 rounded ${
                    currentQuestionNumber <= 1
                      ? 'bg-gray-300 text-gray-500 cursor-not-allowed'
                      : 'bg-gray-600 text-white hover:bg-gray-700'
                  }`}
                >
                  Previous
                </button>
                
                <button
                  onClick={goToNextQuestion}
                  disabled={currentQuestionNumber >= totalQuestions}
                  className={`px-4 py-2 rounded ${
                    currentQuestionNumber >= totalQuestions
                      ? 'bg-gray-300 text-gray-500 cursor-not-allowed'
                      : 'bg-red-600 text-white hover:bg-red-700'
                  }`}
                >
                  Next
                </button>
              </div>
            </>
          )}
        </div>
      </main>

      {/* Footer */}
      <footer className="bg-gray-100 py-6">
        <div className="container mx-auto px-4">
          <div className="flex flex-col md:flex-row justify-between items-center">
            <p className="text-gray-600">© {new Date().getFullYear()} CUHK Online Exam Platform</p>
            <div className="flex space-x-4 mt-4 md:mt-0">
              <Link href="/about" className="text-gray-600 hover:text-gray-900">About</Link>
              <Link href="/contact" className="text-gray-600 hover:text-gray-900">Contact</Link>
              <Link href="/privacy" className="text-gray-600 hover:text-gray-900">Privacy Policy</Link>
            </div>
          </div>
        </div>
      </footer>
    </div>
  );
}