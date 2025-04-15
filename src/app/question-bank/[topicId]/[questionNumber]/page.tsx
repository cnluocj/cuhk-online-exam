"use client";

import { useState, useEffect } from 'react';
import { useRouter } from 'next/navigation';
import Link from 'next/link';
import supabase from '@/utils/supabase';
import MathJaxContent from '@/components/MathJaxContent';
import { use } from 'react';

// Define a type for Window with MathJax for this component
interface WindowWithMathJax extends Window {
  MathJax?: {
    typeset?: () => void;
    Hub?: {
      Queue: (args: unknown[]) => void;
    };
  };
}

// 类型定义
interface Question {
  id: number;
  question_number: number;
  content: string;
  latex_content: string;
  language: string;
}

interface Answer {
  id: number;
  content: string;
  latex_content: string;
}

interface Topic {
  id: number;
  name: string;
  display_name: string;
}

// Define the type for params
type Params = Promise<{ topicId: string; questionNumber: string }>;

// 将组件分为两部分，外部组件获取params，内部组件处理实际逻辑
export default function QuestionPageWrapper({ params }: { params: Params }) {
  // Use the React.use() function to unwrap the Promise
  const unwrappedParams = use(params);
  // 将解析后的参数传递给内部组件
  return <QuestionPage topicId={unwrappedParams.topicId} questionNumber={unwrappedParams.questionNumber} />;
}

// 内部组件接收已经解析好的props
function QuestionPage({ topicId, questionNumber }: { topicId: string; questionNumber: string }) {
  const router = useRouter();
  const topicIdNum = parseInt(topicId);
  const currentQuestionNumber = parseInt(questionNumber);
  
  const [topic, setTopic] = useState<Topic | null>(null);
  const [question, setQuestion] = useState<Question | null>(null);
  const [answer, setAnswer] = useState<Answer | null>(null);
  const [totalQuestions, setTotalQuestions] = useState<number>(0);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [showAnswer, setShowAnswer] = useState(false);
  const [language, setLanguage] = useState<'English' | 'Chinese'>('English');

  useEffect(() => {
    async function fetchData() {
      try {
        setLoading(true);
        setShowAnswer(false);
        
        // Get topic information
        const { data: topicData, error: topicError } = await supabase
          .from('topics')
          .select('*')
          .eq('id', topicIdNum)
          .single();
        
        if (topicError) {
          throw new Error(`Failed to get topic information: ${topicError.message}`);
        }
        
        setTopic(topicData);
        
        // Get total question count
        const { count, error: countError } = await supabase
          .from('questions')
          .select('*', { count: 'exact', head: true })
          .eq('topic_id', topicIdNum)
          .eq('language', 'English');
        
        if (countError) {
          throw new Error(`Failed to get question count: ${countError.message}`);
        }
        
        setTotalQuestions(count || 0);
        
        // Check if current question number is valid
        if (count && (currentQuestionNumber < 1 || currentQuestionNumber > count)) {
          throw new Error(`Invalid question number: ${currentQuestionNumber}`);
        }
        
        // Get current question
        const { data: questionData, error: questionError } = await supabase
          .from('questions')
          .select('*')
          .eq('topic_id', topicIdNum)
          .eq('question_number', currentQuestionNumber)
          .eq('language', language)
          .single();
        
        if (questionError) {
          throw new Error(`Failed to get question: ${questionError.message}`);
        }
        
        setQuestion(questionData);
        
        // Get answer
        const { data: answerData, error: answerError } = await supabase
          .from('answers')
          .select('*')
          .eq('question_id', questionData.id)
          .single();
        
        if (answerError && answerError.code !== 'PGRST116') { // PGRST116 is "no rows returned" error
          throw new Error(`Failed to get answer: ${answerError.message}`);
        }
        
        setAnswer(answerData || null);
        
      } catch (err) {
        console.error('Failed to fetch question data:', err);
        setError(err instanceof Error ? err.message : 'Failed to fetch question data, please try again later');
      } finally {
        setLoading(false);
      }
    }
    
    fetchData();
  }, [topicIdNum, currentQuestionNumber, language]);

  // Switch language
  const toggleLanguage = () => {
    setLanguage(prev => prev === 'English' ? 'Chinese' : 'English');
  };

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
    
    // Add a small delay and then force MathJax to reprocess the page
    // This helps ensure proper rendering when showing/hiding answers
    setTimeout(() => {
      const MathJax = (window as WindowWithMathJax).MathJax;
      if (MathJax && typeof MathJax.typeset === 'function') {
        try {
          MathJax.typeset();
        } catch (error) {
          console.error('Error reprocessing MathJax:', error);
        }
      }
    }, 50);
  };

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
              <p>{error}</p>
              <Link href="/question-bank" className="mt-2 inline-block text-red-700 underline">
                Back to Question Bank
              </Link>
            </div>
          ) : (
            <>
              {/* Title and Navigation */}
              <div className="flex justify-between items-center mb-6">
                <div>
                  <h1 className="text-2xl font-bold">{topic?.display_name}</h1>
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
                {question && (
                  <div className="py-2 text-lg">
                    <MathJaxContent 
                      content={question.latex_content} 
                      id={`question-${question.id}`}
                      key={`question-${question.id}-${language}`}
                    />
                  </div>
                )}
              </div>

              {/* Answer Area */}
              <div className="bg-white p-6 rounded-lg shadow-md mb-6">
                <div className="flex justify-between items-center mb-4">
                  <h2 className="text-xl font-semibold">Answer</h2>
                  <button
                    onClick={toggleShowAnswer}
                    className="text-white bg-red-600 hover:bg-red-700 px-4 py-2 rounded-md"
                  >
                    {showAnswer ? 'Hide Answer' : 'Show Answer'}
                  </button>
                </div>
                
                {showAnswer && answer ? (
                  <div className="py-2">
                    <MathJaxContent 
                      content={answer.latex_content} 
                      id={`answer-${answer.id}`}
                      key={`answer-${answer.id}`}
                    />
                  </div>
                ) : (
                  <div className="py-8 text-center text-gray-500">
                    {showAnswer ? 'No answer available' : 'Click "Show Answer" button to view the solution'}
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