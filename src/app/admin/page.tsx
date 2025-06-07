'use client';

import { useState, useEffect, useCallback } from 'react';

interface Question {
  id: number;
  topic_id: number;
  question_number: number;
  language: string;
  content: string;
  latex_content: string;
  scoring_criteria: string | null;
  created_at: string;
}

interface Answer {
  id: number;
  question_id: number;
  content: string;
  latex_content: string;
  created_at: string;
}

interface Topic {
  id: number;
  name: string;
  display_name: string;
  chapter: string;
}

interface QuestionWithDetails extends Question {
  topic: Topic;
  answer: Answer | null;
}

export default function AdminPage() {
  const [questions, setQuestions] = useState<QuestionWithDetails[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [generatingCriteria, setGeneratingCriteria] = useState<number | null>(null);
  const [language, setLanguage] = useState<'English' | 'Chinese'>('English');

  const fetchQuestions = useCallback(async () => {
    try {
      setLoading(true);
      const response = await fetch(`/api/admin/questions?language=${language}&limit=50`);
      const data = await response.json();
      
      if (data.success) {
        setQuestions(data.questions);
      } else {
        setError(data.error || 'Failed to fetch questions');
      }
    } catch (err) {
      setError('Network error');
      console.error('Error fetching questions:', err);
    } finally {
      setLoading(false);
    }
  }, [language]);

  useEffect(() => {
    fetchQuestions();
  }, [fetchQuestions]);

  const generateScoringCriteria = async (question: QuestionWithDetails) => {
    if (!question.answer) {
      alert('No answer available for this question');
      return;
    }

    try {
      setGeneratingCriteria(question.id);
      
      // 调用生成评分标准的 API
      const response = await fetch('/api/scoring-criteria/generate', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          question: question.content,
          answer: question.answer.content
        }),
      });

      const data = await response.json();
      
      if (data.success) {
        // 保存评分标准
        const saveResponse = await fetch('/api/scoring-criteria/save', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({
            questionId: question.id,
            scoringCriteria: data.scoring_criteria
          }),
        });

        const saveData = await saveResponse.json();
        
        if (saveData.success) {
          // 更新本地状态
          setQuestions(prev => prev.map(q => 
            q.id === question.id 
              ? { ...q, scoring_criteria: data.scoring_criteria }
              : q
          ));
          alert('评分标准生成并保存成功！');
        } else {
          alert('保存评分标准失败：' + saveData.error);
        }
      } else {
        alert('生成评分标准失败：' + data.error);
      }
    } catch (err) {
      console.error('Error generating scoring criteria:', err);
      alert('生成评分标准时发生错误');
    } finally {
      setGeneratingCriteria(null);
    }
  };

  if (loading) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <div className="text-lg">加载中...</div>
      </div>
    );
  }

  if (error) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <div className="text-red-600">错误: {error}</div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50 py-8">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="mb-8">
          <h1 className="text-3xl font-bold text-gray-900">题目管理后台</h1>
          <p className="mt-2 text-gray-600">管理题目的评分标准</p>
        </div>

        {/* 语言选择 */}
        <div className="mb-6">
          <div className="flex space-x-4">
            <button
              onClick={() => setLanguage('English')}
              className={`px-4 py-2 rounded-md ${
                language === 'English'
                  ? 'bg-blue-600 text-white'
                  : 'bg-white text-gray-700 border border-gray-300'
              }`}
            >
              English
            </button>
            <button
              onClick={() => setLanguage('Chinese')}
              className={`px-4 py-2 rounded-md ${
                language === 'Chinese'
                  ? 'bg-blue-600 text-white'
                  : 'bg-white text-gray-700 border border-gray-300'
              }`}
            >
              中文
            </button>
          </div>
        </div>

        {/* 题目列表 */}
        <div className="space-y-6">
          {questions.map((question) => (
            <div key={question.id} className="bg-white rounded-lg shadow-md p-6">
              <div className="flex justify-between items-start mb-4">
                <div>
                  <h3 className="text-lg font-semibold text-gray-900">
                    {question.topic.display_name} - 题目 {question.question_number}
                  </h3>
                  <p className="text-sm text-gray-500">{question.topic.chapter}</p>
                </div>
                <span className="px-2 py-1 bg-blue-100 text-blue-800 text-xs rounded-full">
                  {question.language}
                </span>
              </div>

              {/* 题目内容 */}
              <div className="mb-4">
                <h4 className="font-medium text-gray-900 mb-2">题目:</h4>
                <div className="bg-gray-50 p-3 rounded-md">
                  <p className="text-gray-700">{question.content}</p>
                </div>
              </div>

              {/* 答案 */}
              {question.answer && (
                <div className="mb-4">
                  <h4 className="font-medium text-gray-900 mb-2">答案:</h4>
                  <div className="bg-green-50 p-3 rounded-md">
                    <p className="text-gray-700">{question.answer.content}</p>
                  </div>
                </div>
              )}

              {/* 评分标准 */}
              <div className="mb-4">
                <div className="flex justify-between items-center mb-2">
                  <h4 className="font-medium text-gray-900">评分标准:</h4>
                  <button
                    onClick={() => generateScoringCriteria(question)}
                    disabled={generatingCriteria === question.id || !question.answer}
                    className={`px-4 py-2 rounded-md text-sm font-medium ${
                      generatingCriteria === question.id
                        ? 'bg-gray-400 text-white cursor-not-allowed'
                        : question.answer
                        ? 'bg-blue-600 text-white hover:bg-blue-700'
                        : 'bg-gray-300 text-gray-500 cursor-not-allowed'
                    }`}
                  >
                    {generatingCriteria === question.id ? '生成中...' : '生成评分标准'}
                  </button>
                </div>
                <div className="bg-yellow-50 p-3 rounded-md">
                  {question.scoring_criteria ? (
                    <p className="text-gray-700 whitespace-pre-wrap">{question.scoring_criteria}</p>
                  ) : (
                    <p className="text-gray-500 italic">暂无评分标准</p>
                  )}
                </div>
              </div>
            </div>
          ))}
        </div>

        {questions.length === 0 && (
          <div className="text-center py-12">
            <p className="text-gray-500">暂无题目数据</p>
          </div>
        )}
      </div>
    </div>
  );
}
