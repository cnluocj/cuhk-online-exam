"use client";

import Link from "next/link";

export default function Exams() {
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
              <li><Link href="/question-bank" className="hover:underline">Question Bank</Link></li>
              <li><Link href="/login" className="hover:underline">Login</Link></li>
            </ul>
          </nav>
        </div>
      </header>

      {/* Main Content */}
      <main className="flex-grow container mx-auto px-4 py-8">
        <div className="max-w-4xl mx-auto">
          <h1 className="text-3xl font-bold mb-6">Online Exams</h1>
          
          <div className="bg-white p-6 rounded-lg shadow mb-8">
            <h2 className="text-xl font-semibold mb-4">Exams have been moved to Question Bank</h2>
            <p className="mb-4">
              Please visit the Question Bank page to access all exam materials.
            </p>
            <Link 
              href="/question-bank" 
              className="inline-block bg-red-600 hover:bg-red-700 text-white px-4 py-2 rounded-md"
            >
              Go to Question Bank
            </Link>
          </div>
        </div>
      </main>

      {/* Footer */}
      <footer className="bg-gray-100 py-4">
        <div className="container mx-auto px-4">
          <p className="text-center text-gray-600 text-sm">
            © {new Date().getFullYear()} CUHK Online Exam Platform
          </p>
        </div>
      </footer>
    </div>
  );
} 