import Link from "next/link";

// Sample exam data
const exams = [
  {
    id: 1,
    title: "Mathematics Midterm",
    subject: "Mathematics",
    duration: "2 hours",
    deadline: "2023-05-15",
    status: "Available",
  },
  {
    id: 2,
    title: "Introduction to Computer Science",
    subject: "Computer Science",
    duration: "3 hours",
    deadline: "2023-05-20",
    status: "Available",
  },
  {
    id: 3,
    title: "English Literature",
    subject: "English",
    duration: "1.5 hours",
    deadline: "2023-05-10",
    status: "Expired",
  },
  {
    id: 4,
    title: "Physics Final Exam",
    subject: "Physics",
    duration: "2.5 hours",
    deadline: "2023-06-01",
    status: "Upcoming",
  },
  {
    id: 5,
    title: "History of China",
    subject: "History",
    duration: "2 hours",
    deadline: "2023-05-25",
    status: "Available",
  },
];

export default function ExamsPage() {
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
        <div className="max-w-6xl mx-auto">
          <h1 className="text-3xl font-bold mb-8">Available Exams</h1>
          
          <div className="bg-white rounded-lg shadow overflow-hidden">
            <div className="px-6 py-8 text-center">
              <p className="text-lg text-gray-600 mb-6">
                This feature is not currently available. Please use the Question Bank to practice.
              </p>
              <Link href="/question-bank" className="bg-red-600 hover:bg-red-700 text-white font-medium py-2 px-6 rounded-md">
                Go to Question Bank
              </Link>
            </div>
          </div>
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