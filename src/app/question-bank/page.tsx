"use client";

import { useState, useEffect } from 'react';
import { useRouter } from 'next/navigation';
import Link from 'next/link';

// Define the expected structure for a topic received from the API
interface TopicWithCount {
  id: number;
  name: string;
  display_name: string;
  chapter: string;
  questionCount: number;
}

export default function QuestionBankPage() {
  const router = useRouter();
  const [topics, setTopics] = useState<TopicWithCount[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    async function fetchTopicsFromApi() {
      setLoading(true);
      setError(null);
      console.log('[Page] Fetching topics from /api/topics...');
      try {
        const response = await fetch('/api/topics');

        if (!response.ok) {
          // Attempt to read error details from the response body
          let errorDetails = `HTTP error! status: ${response.status}`;
          try {
            const errorJson = await response.json();
            errorDetails = errorJson.error || errorJson.message || errorDetails;
          } catch {
            // Ignore if response body isn't valid JSON - no variable needed
            console.warn('[Page] Could not parse error response JSON.');
          }
          throw new Error(errorDetails);
        }

        const data: TopicWithCount[] = await response.json();
        console.log('[Page] Topics fetched successfully from API.');
        setTopics(data);
      } catch (err) {
        console.error('[Page] Error fetching topics from API:', err);
        setError(err instanceof Error ? err.message : 'An unknown error occurred while fetching topics.');
      } finally {
        console.log('[Page] Finished API topic fetch attempt.');
        setLoading(false);
      }
    }

    fetchTopicsFromApi();
  }, []);

  // Handle start practice button click
  const handleStartExam = (topicId: number) => {
    router.push(`/question-bank/${topicId}/1`); // Navigate to first question
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
        <div className="max-w-6xl mx-auto">
          <h1 className="text-3xl font-bold mb-8">Question Bank</h1>
          
          {loading ? (
            <div className="flex justify-center items-center py-12">
              <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-red-700"></div>
            </div>
          ) : error ? (
            <div className="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded mb-4">
              <p className="font-bold">Error loading topics:</p>
              <p>{error}</p> 
            </div>
          ) : (
            <div className="bg-white rounded-lg shadow overflow-hidden">
              <table className="min-w-full divide-y divide-gray-200">
                <thead className="bg-gray-50">
                  <tr>
                    <th scope="col" className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                      Topic
                    </th>
                    <th scope="col" className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                      Chapter
                    </th>
                    <th scope="col" className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                      Question Count
                    </th>
                    <th scope="col" className="px-6 py-3 text-right text-xs font-medium text-gray-500 uppercase tracking-wider">
                      Action
                    </th>
                  </tr>
                </thead>
                <tbody className="bg-white divide-y divide-gray-200">
                  {topics.length === 0 ? (
                    <tr>
                      <td colSpan={4} className="px-6 py-4 text-center text-gray-500">
                        No topic data available
                      </td>
                    </tr>
                  ) : (
                    topics.map((topic) => (
                      <tr key={topic.id}>
                        <td className="px-6 py-4 whitespace-nowrap">
                          <div className="text-sm font-medium text-gray-900">{topic.display_name}</div>
                        </td>
                        <td className="px-6 py-4 whitespace-nowrap">
                          <div className="text-sm text-gray-500">{topic.chapter}</div>
                        </td>
                        <td className="px-6 py-4 whitespace-nowrap">
                          <div className="text-sm text-gray-900">{topic.questionCount}</div>
                        </td>
                        <td className="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
                          <button
                            onClick={() => handleStartExam(topic.id)}
                            className="text-white bg-red-600 hover:bg-red-700 px-4 py-2 rounded-md"
                            disabled={topic.questionCount === 0}
                          >
                            Start Practice
                          </button>
                        </td>
                      </tr>
                    ))
                  )}
                </tbody>
              </table>
            </div>
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