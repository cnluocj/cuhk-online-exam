"use client";

import { useState, useEffect } from 'react';
import { useRouter } from 'next/navigation';
import Link from 'next/link';
import MathJaxContent from '@/components/MathJaxContent';
import { use } from 'react';

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

  // Switch language (client-side toggle)
  const toggleLanguage = () => {
    setLanguage(prev => prev === 'English' ? 'Chinese' : 'English');
    // MathJax re-rendering might be needed if content swaps immediately
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

  // Helper function to request MathJax reprocessing
  const requestMathJaxReprocess = () => {
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
  }

  // Show or hide answer
  const toggleShowAnswer = () => {
    setShowAnswer(prev => !prev); // Update state first
    // Always request reprocessing after toggling answer visibility
    requestMathJaxReprocess(); 
  };

  // --- JSX Rendering --- 
  // (Header and Footer remain the same)
  // Main content uses state variables: loading, error, topic, currentQuestion, answer, totalQuestions

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
          ) : !topic || !currentQuestion ? ( // Handle case where data might be missing after loading
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