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
              <li><Link href="/" className="hover:underline">Home</Link></li>
              <li><Link href="/exams" className="hover:underline font-semibold">Exams</Link></li>
              <li><Link href="/login" className="hover:underline">Login</Link></li>
            </ul>
          </nav>
        </div>
      </header>

      {/* Main Content */}
      <main className="flex-grow container mx-auto px-4 py-8">
        <div className="max-w-6xl mx-auto">
          <h1 className="text-3xl font-bold mb-8">Available Exams</h1>
          
          {/* Filter and Search Section */}
          <div className="mb-6 flex flex-col sm:flex-row gap-4 justify-between">
            <div className="flex gap-4">
              <select className="px-4 py-2 border rounded">
                <option value="">All Subjects</option>
                <option value="mathematics">Mathematics</option>
                <option value="computer-science">Computer Science</option>
                <option value="english">English</option>
                <option value="physics">Physics</option>
                <option value="history">History</option>
              </select>
              <select className="px-4 py-2 border rounded">
                <option value="">All Status</option>
                <option value="available">Available</option>
                <option value="upcoming">Upcoming</option>
                <option value="expired">Expired</option>
              </select>
            </div>
            <div className="relative">
              <input
                type="text"
                placeholder="Search exams..."
                className="px-4 py-2 border rounded w-full sm:w-64"
              />
            </div>
          </div>
          
          {/* Exams List */}
          <div className="bg-white rounded-lg shadow overflow-hidden">
            <table className="min-w-full divide-y divide-gray-200">
              <thead className="bg-gray-50">
                <tr>
                  <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Exam Title</th>
                  <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Subject</th>
                  <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Duration</th>
                  <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Deadline</th>
                  <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Status</th>
                  <th className="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Action</th>
                </tr>
              </thead>
              <tbody className="bg-white divide-y divide-gray-200">
                {exams.map((exam) => (
                  <tr key={exam.id}>
                    <td className="px-6 py-4 whitespace-nowrap">
                      <div className="text-sm font-medium text-gray-900">{exam.title}</div>
                    </td>
                    <td className="px-6 py-4 whitespace-nowrap">
                      <div className="text-sm text-gray-500">{exam.subject}</div>
                    </td>
                    <td className="px-6 py-4 whitespace-nowrap">
                      <div className="text-sm text-gray-500">{exam.duration}</div>
                    </td>
                    <td className="px-6 py-4 whitespace-nowrap">
                      <div className="text-sm text-gray-500">{exam.deadline}</div>
                    </td>
                    <td className="px-6 py-4 whitespace-nowrap">
                      <span 
                        className={`px-2 inline-flex text-xs leading-5 font-semibold rounded-full ${
                          exam.status === 'Available' 
                            ? 'bg-green-100 text-green-800' 
                            : exam.status === 'Upcoming' 
                              ? 'bg-yellow-100 text-yellow-800' 
                              : 'bg-red-100 text-red-800'
                        }`}
                      >
                        {exam.status}
                      </span>
                    </td>
                    <td className="px-6 py-4 whitespace-nowrap text-sm font-medium">
                      {exam.status === 'Available' ? (
                        <Link href={`/exams/${exam.id}`} className="text-red-600 hover:text-red-900">
                          Take Exam
                        </Link>
                      ) : exam.status === 'Upcoming' ? (
                        <span className="text-gray-400">Not Available Yet</span>
                      ) : (
                        <span className="text-gray-400">Expired</span>
                      )}
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
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