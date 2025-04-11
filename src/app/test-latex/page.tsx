"use client";

import { useState } from 'react';
import Link from 'next/link';
import MathJaxContent from '@/components/MathJaxContent';

export default function TestLatexPage() {
  const [content, setContent] = useState<string>(
    `<div>
    <p>In the figure, the straight line $\\displaystyle L:y=-\\frac{3}{2}x+9$ passes through the point $A(2,a)$ and cuts the $x$-axis at $B$. $C$ is a point on the $x$-axis such that the area of $\\triangle ABC$ is $27$ square units. Find the coordinates of $A$, $B$ and $C$. Hence, find the equation of $AC$.</p>
    
    <div class="diagram-container my-4 p-4 bg-gray-100 rounded-lg">
      <p class="text-center"><strong>Figure Description:</strong></p>
      <p>The figure shows a coordinate system with:</p>
      <ul class="list-disc ml-6">
        <li>A straight line $L: y=-\\frac{3}{2}x+9$ (blue)</li>
        <li>Point $A$ is located at $(2,a)$ where the line passes through</li>
        <li>Point $B$ is where the line $L$ cuts the $x$-axis</li>
        <li>Point $C$ is another point on the $x$-axis</li>
        <li>The triangle $\\triangle ABC$ has an area of 27 square units</li>
      </ul>
    </div>
    
    <p><strong>Solution:</strong></p>
    <p>To find the coordinates of $A$, we need to find the value of $a$. Since $A(2,a)$ lies on the line $L$, we have:</p>
    <p>$a = -\\frac{3}{2}(2) + 9 = -3 + 9 = 6$</p>
    <p>So $A(2,6)$.</p>
    
    <p>To find the coordinates of $B$, we need to find where the line $L$ cuts the $x$-axis. This is where $y = 0$:</p>
    <p>$0 = -\\frac{3}{2}x + 9$</p>
    <p>$\\frac{3}{2}x = 9$</p>
    <p>$x = 6$</p>
    <p>So $B(6,0)$.</p>
    
    <p>To find the coordinates of $C(c,0)$, we use the fact that the area of $\\triangle ABC$ is 27 square units.</p>
    <p>The area of a triangle can be computed as $\\frac{1}{2} \\times \\text{base} \\times \\text{height}$.</p>
    <p>The base is the distance from $B$ to $C$, which is $|c - 6|$.</p>
    <p>The height is the $y$-coordinate of $A$, which is 6.</p>
    <p>So we have: $\\frac{1}{2} \\times |c - 6| \\times 6 = 27$</p>
    <p>$3|c - 6| = 27$</p>
    <p>$|c - 6| = 9$</p>
    <p>This gives us $c - 6 = 9$ or $c - 6 = -9$</p>
    <p>So $c = 15$ or $c = -3$</p>
    <p>Since we typically draw coordinate systems with positive values, $C(15,0)$ is the likely answer.</p>
    
    <p>To find the equation of $AC$, we use the slope formula:</p>
    <p>Slope of $AC = \\frac{0 - 6}{15 - 2} = \\frac{-6}{13}$</p>
    <p>Using point-slope form with point $A(2,6)$:</p>
    <p>$y - 6 = \\frac{-6}{13}(x - 2)$</p>
    <p>$y - 6 = \\frac{-6x + 12}{13}$</p>
    <p>$13(y - 6) = -6x + 12$</p>
    <p>$13y - 78 = -6x + 12$</p>
    <p>$13y + 6x = 78 + 12 = 90$</p>
    <p>Therefore, the equation of $AC$ is $13y + 6x = 90$ or $6x + 13y = 90$</p>
    </div>`
  );

  const [testContent, setTestContent] = useState<string>(
    `<p>It is given that the straight line $L$ passes through the points $A(2,3)$ and $B(7,8)$. Find the equation of $L$.</p>
    <p>Solution: Given that line $L$ passes through points $A(2,3)$ and $B(7,8)$, find the equation of line $L$.</p>
    <p>Two-point form of line equation: $\\frac{x-x_1}{x_2-x_1} = \\frac{y-y_1}{y_2-y_1}$</p>
    <p>Substituting $A(2,3)$ and $B(7,8)$: $\\frac{x-2}{7-2} = \\frac{y-3}{8-3}$</p>
    <p>Simplify: $\\frac{x-2}{5} = \\frac{y-3}{5}$</p>
    <p>$\\Rightarrow x-2 = y-3$</p>
    <p>$\\Rightarrow x - y = -1$</p>
    <p>Therefore, the equation of line $L$ is $x - y = -1$ or $x - y + 1 = 0$</p>`
  );

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
          <h1 className="text-3xl font-bold mb-8">LaTeX Test Page</h1>
          
          <div className="bg-white p-6 rounded-lg shadow-md mb-6">
            <h2 className="text-xl font-semibold mb-4">Example 1 (With TikZ Diagram Handling)</h2>
            <div className="py-2 text-lg">
              <MathJaxContent content={content} />
            </div>
          </div>

          <div className="bg-white p-6 rounded-lg shadow-md mb-6">
            <h2 className="text-xl font-semibold mb-4">Example 2 (Simple Math Formulas)</h2>
            <div className="py-2 text-lg">
              <MathJaxContent content={testContent} />
            </div>
          </div>

          <div className="bg-white p-6 rounded-lg shadow-md">
            <h2 className="text-xl font-semibold mb-4">Edit Content</h2>
            <textarea 
              value={content}
              onChange={(e) => setContent(e.target.value)}
              className="w-full h-64 p-2 border border-gray-300 rounded"
            />
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