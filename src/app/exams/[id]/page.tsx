"use client";

import { useState, useEffect } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";

// Sample exam data (in a real app, this would come from an API)
const examData = {
  id: 1,
  title: "Mathematics Midterm",
  subject: "Mathematics",
  duration: "2 hours",
  totalQuestions: 5,
  questions: [
    {
      id: 1,
      type: "multiple-choice",
      question: "What is the value of x in the equation 2x + 5 = 15?",
      options: ["3", "5", "7", "10"],
      correctAnswer: "5",
    },
    {
      id: 2,
      type: "multiple-choice",
      question: "If a triangle has angles measuring 30° and 60°, what is the measure of the third angle?",
      options: ["30°", "60°", "90°", "120°"],
      correctAnswer: "90°",
    },
    {
      id: 3,
      type: "multiple-choice",
      question: "What is the square root of 144?",
      options: ["9", "12", "14", "16"],
      correctAnswer: "12",
    },
    {
      id: 4,
      type: "text",
      question: "Solve for x: 3x - 7 = 14",
      correctAnswer: "7",
    },
    {
      id: 5,
      type: "text",
      question: "If a rectangle has a length of 8 units and a width of 6 units, what is its area?",
      correctAnswer: "48",
    },
  ],
};

export default function ExamPage({ params }: { params: { id: string } }) {
  const router = useRouter();
  const [currentQuestion, setCurrentQuestion] = useState(0);
  const [selectedAnswers, setSelectedAnswers] = useState<Record<number, string>>({});
  const [timeLeft, setTimeLeft] = useState(7200); // 2 hours in seconds
  const [isSubmitting, setIsSubmitting] = useState(false);

  // Format time as HH:MM:SS
  const formatTime = (seconds: number) => {
    const hours = Math.floor(seconds / 3600);
    const minutes = Math.floor((seconds % 3600) / 60);
    const secs = seconds % 60;
    return `${hours.toString().padStart(2, "0")}:${minutes.toString().padStart(2, "0")}:${secs.toString().padStart(2, "0")}`;
  };

  // Timer effect
  useEffect(() => {
    const timer = setInterval(() => {
      setTimeLeft((prev) => {
        if (prev <= 1) {
          clearInterval(timer);
          alert("Time's up! Your exam will be submitted automatically.");
          handleSubmit();
          return 0;
        }
        return prev - 1;
      });
    }, 1000);

    return () => clearInterval(timer);
  }, []);

  // Handle answer selection
  const handleAnswerSelect = (questionId: number, answer: string) => {
    setSelectedAnswers((prev) => ({
      ...prev,
      [questionId]: answer,
    }));
  };

  // Handle exam submission
  const handleSubmit = () => {
    setIsSubmitting(true);
    
    // In a real app, you would send the answers to the server
    console.log("Submitting answers:", selectedAnswers);
    
    // Simulate a submission delay
    setTimeout(() => {
      // Redirect to a results page or dashboard
      alert("Exam submitted successfully!");
      router.push("/exams");
    }, 1500);
  };

  // Handle navigation between questions
  const goToNextQuestion = () => {
    if (currentQuestion < examData.questions.length - 1) {
      setCurrentQuestion(currentQuestion + 1);
    }
  };

  const goToPrevQuestion = () => {
    if (currentQuestion > 0) {
      setCurrentQuestion(currentQuestion - 1);
    }
  };

  const question = examData.questions[currentQuestion];

  return (
    <div className="flex min-h-screen flex-col">
      {/* Header */}
      <header className="bg-red-700 text-white shadow-md">
        <div className="container mx-auto px-4 py-4 flex justify-between items-center">
          <div className="flex items-center gap-2">
            <Link href="/" className="text-xl font-bold">CUHK Online Exam Platform</Link>
          </div>
          <div className="font-mono text-xl">
            {formatTime(timeLeft)}
          </div>
        </div>
      </header>

      {/* Main Content */}
      <main className="flex-grow container mx-auto px-4 py-8">
        <div className="max-w-4xl mx-auto">
          <div className="flex justify-between items-center mb-8">
            <h1 className="text-2xl font-bold">{examData.title}</h1>
            <div className="text-sm text-gray-600">
              Question {currentQuestion + 1} of {examData.totalQuestions}
            </div>
          </div>

          {/* Question Navigation */}
          <div className="mb-6 flex flex-wrap gap-2">
            {examData.questions.map((q, index) => (
              <button
                key={q.id}
                onClick={() => setCurrentQuestion(index)}
                className={`w-10 h-10 rounded-full flex items-center justify-center text-sm 
                  ${selectedAnswers[q.id] ? "bg-green-100 text-green-800 border-2 border-green-300" : "bg-gray-100 text-gray-800"}
                  ${currentQuestion === index ? "ring-2 ring-red-500" : ""}
                `}
              >
                {index + 1}
              </button>
            ))}
          </div>

          {/* Question Card */}
          <div className="bg-white rounded-lg shadow-md p-6 mb-8">
            <h2 className="text-xl font-semibold mb-4">Question {currentQuestion + 1}</h2>
            <p className="text-lg mb-6">{question.question}</p>

            {/* Answer Options */}
            {question.type === "multiple-choice" && (
              <div className="space-y-3">
                {question.options?.map((option, index) => (
                  <div key={index} className="flex items-center">
                    <input
                      type="radio"
                      id={`option-${index}`}
                      name={`question-${question.id}`}
                      checked={selectedAnswers[question.id] === option}
                      onChange={() => handleAnswerSelect(question.id, option)}
                      className="h-4 w-4 text-red-600 focus:ring-red-500 border-gray-300"
                    />
                    <label
                      htmlFor={`option-${index}`}
                      className="ml-3 block text-sm font-medium text-gray-700"
                    >
                      {option}
                    </label>
                  </div>
                ))}
              </div>
            )}

            {question.type === "text" && (
              <div>
                <input
                  type="text"
                  value={selectedAnswers[question.id] || ""}
                  onChange={(e) => handleAnswerSelect(question.id, e.target.value)}
                  className="w-full px-3 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none focus:ring-red-500 focus:border-red-500"
                  placeholder="Type your answer here..."
                />
              </div>
            )}
          </div>

          {/* Navigation and Submit Buttons */}
          <div className="flex justify-between">
            <button
              onClick={goToPrevQuestion}
              disabled={currentQuestion === 0}
              className={`px-4 py-2 rounded-md ${
                currentQuestion === 0
                  ? "bg-gray-200 text-gray-500 cursor-not-allowed"
                  : "bg-gray-100 text-gray-800 hover:bg-gray-200"
              }`}
            >
              Previous
            </button>

            <div>
              {currentQuestion === examData.questions.length - 1 ? (
                <button
                  onClick={handleSubmit}
                  disabled={isSubmitting}
                  className={`px-4 py-2 rounded-md ${
                    isSubmitting
                      ? "bg-gray-400 text-white cursor-not-allowed"
                      : "bg-red-600 text-white hover:bg-red-700"
                  }`}
                >
                  {isSubmitting ? "Submitting..." : "Submit Exam"}
                </button>
              ) : (
                <button
                  onClick={goToNextQuestion}
                  className="px-4 py-2 rounded-md bg-red-600 text-white hover:bg-red-700"
                >
                  Next
                </button>
              )}
            </div>
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