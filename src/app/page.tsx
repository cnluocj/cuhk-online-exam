import Link from "next/link";

export default function Home() {
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
              <li><Link href="/admin" className="hover:underline">Admin</Link></li>
              <li><Link href="/login" className="hover:underline">Login</Link></li>
            </ul>
          </nav>
        </div>
      </header>

      {/* Hero Section */}
      <section className="bg-gradient-to-b from-red-700 to-red-800 text-white py-16">
        <div className="container mx-auto px-4">
          <div className="max-w-3xl mx-auto text-center">
            <h1 className="text-4xl md:text-5xl font-bold mb-6">Welcome to CUHK Online Exam Platform</h1>
            <p className="text-xl mb-8">Preparing for your exams has never been easier. Access our comprehensive math question bank to enhance your learning.</p>
            <div className="flex flex-col sm:flex-row gap-4 justify-center">
              <Link 
                href="/question-bank" 
                className="bg-white text-red-700 hover:bg-gray-100 font-semibold py-3 px-6 rounded-md shadow-md"
              >
                Explore Question Bank
              </Link>
              <Link 
                href="/login" 
                className="border-2 border-white text-white hover:bg-white hover:text-red-700 font-semibold py-3 px-6 rounded-md"
              >
                Login
              </Link>
            </div>
          </div>
        </div>
      </section>

      {/* Features Section */}
      <section className="py-16 bg-gray-50">
        <div className="container mx-auto px-4">
          <h2 className="text-3xl font-bold text-center mb-12">Platform Features</h2>
          <div className="grid md:grid-cols-3 gap-8">
            <div className="bg-white p-8 rounded-lg shadow-md">
              <div className="text-red-600 text-4xl mb-4">📚</div>
              <h3 className="text-xl font-semibold mb-3">Extensive Question Bank</h3>
              <p className="text-gray-600">Access a vast collection of math questions with detailed solutions to enhance your learning experience.</p>
            </div>
            <div className="bg-white p-8 rounded-lg shadow-md">
              <div className="text-red-600 text-4xl mb-4">🌐</div>
              <h3 className="text-xl font-semibold mb-3">Bilingual Support</h3>
              <p className="text-gray-600">Switch between English and Chinese versions of questions to better understand the concepts.</p>
            </div>
            <div className="bg-white p-8 rounded-lg shadow-md">
              <div className="text-red-600 text-4xl mb-4">📝</div>
              <h3 className="text-xl font-semibold mb-3">Interactive Learning</h3>
              <p className="text-gray-600">Practice with interactive questions and see detailed answers to improve your understanding and skills.</p>
            </div>
          </div>
        </div>
      </section>

      {/* CTA Section */}
      <section className="py-16 bg-red-700 text-white">
        <div className="container mx-auto px-4 text-center">
          <h2 className="text-3xl font-bold mb-6">Ready to Get Started?</h2>
          <p className="text-xl mb-8">Join thousands of students who are already using our platform to improve their academic performance.</p>
          <Link 
            href="/question-bank" 
            className="bg-white text-red-700 hover:bg-gray-100 font-semibold py-3 px-8 rounded-md shadow-md"
          >
            Start Learning Now
          </Link>
        </div>
      </section>

      {/* Testimonial Section */}
      <section className="py-16 bg-white">
        <div className="container mx-auto px-4">
          <h2 className="text-3xl font-bold text-center mb-12">What Our Users Say</h2>
          <div className="max-w-4xl mx-auto">
            <div className="bg-gray-50 p-8 rounded-lg shadow-sm mb-8">
              <p className="text-gray-700 mb-4 text-lg italic">
                &ldquo;This platform has been instrumental in helping me prepare for my exams. The ability to switch between languages and see detailed solutions has improved my understanding significantly.&rdquo;
              </p>
              <p className="font-semibold">- Sarah, Year 3 Student</p>
            </div>
          </div>
        </div>
      </section>

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
