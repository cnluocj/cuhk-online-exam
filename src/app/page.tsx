import Image from "next/image";
import Link from "next/link";

export default function Home() {
  return (
    <div className="flex min-h-screen flex-col">
      {/* Header */}
      <header className="bg-red-700 text-white shadow-md">
        <div className="container mx-auto px-4 py-4 flex justify-between items-center">
          <div className="flex items-center gap-2">
            <h1 className="text-xl font-bold">CUHK Online Exam Platform</h1>
          </div>
          <nav>
            <ul className="flex space-x-6">
              <li><Link href="/question-bank" className="hover:underline">Question Bank</Link></li>
              <li><Link href="/test-latex" className="hover:underline">LaTeX Test</Link></li>
              <li><Link href="/login" className="hover:underline">Login</Link></li>
            </ul>
          </nav>
        </div>
      </header>

      {/* Main Content */}
      <main className="flex-grow container mx-auto px-4 py-8">
        <div className="max-w-4xl mx-auto">
          <section className="mb-12 text-center">
            <h2 className="text-3xl font-bold mb-4">Welcome to the CUHK Online Examination Platform</h2>
            <p className="text-xl mb-8">Your comprehensive solution for math practice questions</p>
            <div className="flex justify-center gap-4">
              <Link href="/question-bank" className="bg-red-700 hover:bg-red-800 text-white font-bold py-3 px-6 rounded-lg transition-colors">
                Access Question Bank
              </Link>
              <Link href="/login" className="border border-red-700 text-red-700 hover:bg-red-50 font-bold py-3 px-6 rounded-lg transition-colors">
                Login
              </Link>
            </div>
          </section>

          <section className="grid md:grid-cols-2 gap-8 mb-12">
            <div className="bg-white p-6 rounded-lg shadow-md">
              <h3 className="text-xl font-semibold mb-3">Question Bank</h3>
              <p className="mb-4">Browse our comprehensive collection of math practice questions with detailed solutions.</p>
              <Link href="/question-bank" className="text-red-600 hover:underline">Explore question bank →</Link>
            </div>
            <div className="bg-white p-6 rounded-lg shadow-md">
              <h3 className="text-xl font-semibold mb-3">LaTeX Testing</h3>
              <p className="mb-4">Test mathematical expressions and equations with our LaTeX renderer.</p>
              <Link href="/test-latex" className="text-red-600 hover:underline">Try LaTeX test page →</Link>
            </div>
          </section>

          <section className="bg-gray-50 p-8 rounded-lg">
            <h3 className="text-2xl font-semibold mb-4">How It Works</h3>
            <ol className="list-decimal list-inside space-y-4 pl-4">
              <li>Browse the question bank by topics</li>
              <li>Select a question to view and attempt</li>
              <li>Use the "Show Answer" button to check solutions</li>
              <li>Navigate between questions to practice different problems</li>
            </ol>
          </section>
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
