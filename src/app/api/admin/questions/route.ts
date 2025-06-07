import { NextResponse, NextRequest } from 'next/server';
import supabase from '@/utils/supabase';

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

interface QuestionsResponse {
  questions: QuestionWithDetails[];
  success: boolean;
  error?: string;
}

export async function GET(request: NextRequest): Promise<NextResponse<QuestionsResponse>> {
  try {
    const { searchParams } = new URL(request.url);
    const page = parseInt(searchParams.get('page') || '1');
    const limit = parseInt(searchParams.get('limit') || '20');
    const language = searchParams.get('language') || 'English';
    
    const offset = (page - 1) * limit;

    console.log(`[Admin Questions API] Fetching questions - page: ${page}, limit: ${limit}, language: ${language}`);

    // 获取题目列表，包含主题信息
    const { data: questionsData, error: questionsError } = await supabase
      .from('questions')
      .select(`
        *,
        topics:topic_id (
          id,
          name,
          display_name,
          chapter
        )
      `)
      .eq('language', language)
      .order('topic_id', { ascending: true })
      .order('question_number', { ascending: true })
      .range(offset, offset + limit - 1);

    if (questionsError) {
      console.error('[Admin Questions API] Error fetching questions:', questionsError);
      return NextResponse.json({
        success: false,
        error: 'Failed to fetch questions',
        questions: []
      }, { status: 500 });
    }

    if (!questionsData || questionsData.length === 0) {
      return NextResponse.json({
        success: true,
        questions: []
      });
    }

    // 获取对应的答案
    const questionIds = questionsData.map(q => q.id);
    const { data: answersData, error: answersError } = await supabase
      .from('answers')
      .select('*')
      .in('question_id', questionIds);

    if (answersError) {
      console.error('[Admin Questions API] Error fetching answers:', answersError);
      // 继续处理，但答案为空
    }

    // 组合数据
    const questionsWithDetails: QuestionWithDetails[] = questionsData.map(question => {
      const answer = answersData?.find(a => a.question_id === question.id) || null;
      return {
        ...question,
        topic: question.topics as Topic,
        answer: answer
      };
    });

    console.log(`[Admin Questions API] Successfully fetched ${questionsWithDetails.length} questions`);

    return NextResponse.json({
      success: true,
      questions: questionsWithDetails
    });

  } catch (error) {
    console.error('[Admin Questions API] Error:', error);
    return NextResponse.json({
      success: false,
      error: 'Internal server error',
      questions: []
    }, { status: 500 });
  }
}
