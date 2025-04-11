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
              <li><Link href="/" className="hover:underline">Home</Link></li>
              <li><Link href="/exams" className="hover:underline">Exams</Link></li>
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
            <p className="text-xl mb-8">Your comprehensive solution for online assessments and examinations</p>
            <div className="flex justify-center gap-4">
              <Link href="/login" className="bg-red-700 hover:bg-red-800 text-white font-bold py-3 px-6 rounded-lg transition-colors">
                Start an Exam
              </Link>
              <Link href="/register" className="border border-red-700 text-red-700 hover:bg-red-50 font-bold py-3 px-6 rounded-lg transition-colors">
                Register
              </Link>
            </div>
          </section>

          <section className="grid md:grid-cols-3 gap-8 mb-12">
            <div className="bg-white p-6 rounded-lg shadow-md">
              <h3 className="text-xl font-semibold mb-3">Practice Tests</h3>
              <p>Access a variety of practice exams to prepare for your assessments.</p>
            </div>
            <div className="bg-white p-6 rounded-lg shadow-md">
              <h3 className="text-xl font-semibold mb-3">Scheduled Exams</h3>
              <p>View and take your scheduled examinations securely online.</p>
            </div>
            <div className="bg-white p-6 rounded-lg shadow-md">
              <h3 className="text-xl font-semibold mb-3">Performance Analytics</h3>
              <p>Track your progress and view detailed performance metrics.</p>
            </div>
          </section>

          <section className="bg-gray-50 p-8 rounded-lg">
            <h3 className="text-2xl font-semibold mb-4">How It Works</h3>
            <ol className="list-decimal list-inside space-y-4 pl-4">
              <li>Register or log in to your student account</li>
              <li>Browse available exams or access your scheduled assessments</li>
              <li>Complete your exams within the allocated time</li>
              <li>Submit your answers and receive immediate feedback when available</li>
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
