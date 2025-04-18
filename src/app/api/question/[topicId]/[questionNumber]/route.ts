import { NextResponse, NextRequest } from 'next/server';
import supabase from '@/utils/supabase';

// Define interfaces for the data structure
interface Question {
  id: number;
  question_number: number;
  content: string;
  latex_content: string;
  language: string;
  topic_id: number;
}

interface Answer {
  id: number;
  content: string;
  latex_content: string;
  question_id: number;
}

interface Topic {
  id: number;
  name: string;
  display_name: string;
  chapter: string;
}

interface ApiResponseData {
  topic: Topic;
  question_english: Question | null;
  question_chinese: Question | null;
  answer: Answer | null;
  totalQuestions: number;
}

interface ErrorResponse {
  error: string;
  details?: string;
}

// Use standard signature with explicit NextRequest type
// Updated for Next.js 15 Promise params
export async function GET(
  request: NextRequest,
  { params }: { params: Promise<{ topicId: string; questionNumber: string }> } // Type params as Promise
): Promise<NextResponse<ApiResponseData | ErrorResponse>> {

  let resolvedParams: { topicId: string; questionNumber: string };
  try {
    // Await the params promise to resolve *before* the main try block
    resolvedParams = await params;
  } catch (paramError) {
    console.error("[API /api/question/unknown/unknown] Error resolving route parameters:", paramError);
    return NextResponse.json({ error: 'Failed to resolve route parameters.' }, { status: 500 });
  }

  const { topicId, questionNumber } = resolvedParams;
  const logPrefix = `[API /api/question/${topicId}/${questionNumber}]`; // Define logPrefix using resolved params

  try {
    console.log(`${logPrefix} Starting fetch...`);

    const topicIdNum = parseInt(topicId);
    const currentQuestionNumber = parseInt(questionNumber);

    if (isNaN(topicIdNum) || isNaN(currentQuestionNumber)) {
      console.error(`${logPrefix} Invalid parameters: topicId or questionNumber is not a number.`);
      return NextResponse.json({ error: 'Invalid topic ID or question number.' }, { status: 400 });
    }

    // 1. Get topic information
    console.log(`${logPrefix} Fetching topic info...`);
    const { data: topicData, error: topicError } = await supabase
      .from('topics')
      .select('*')
      .eq('id', topicIdNum)
      .single();

    if (topicError || !topicData) {
      console.error(`${logPrefix} Error fetching topic info:`, topicError);
      const status = topicError?.code === 'PGRST116' ? 404 : 500; // Not Found or Server Error
      return NextResponse.json({ error: 'Failed to get topic information.', details: topicError?.message }, { status });
    }
    console.log(`${logPrefix} Topic info fetched.`);

    // 2. Get total question count
    console.log(`${logPrefix} Fetching total question count...`);
    const { count: totalQuestions, error: countError } = await supabase
      .from('questions')
      .select('*', { count: 'exact', head: true })
      .eq('topic_id', topicIdNum)
      .eq('language', 'English'); // Count based on one language

    if (countError) {
      console.error(`${logPrefix} Error fetching question count:`, countError);
      return NextResponse.json({ error: 'Failed to get question count.', details: countError.message }, { status: 500 });
    }
    const totalCount = totalQuestions || 0;
    console.log(`${logPrefix} Total question count: ${totalCount}`);

    // 3. Validate question number range
    if (currentQuestionNumber < 1 || currentQuestionNumber > totalCount) {
       console.error(`${logPrefix} Invalid question number requested: ${currentQuestionNumber} (Total: ${totalCount})`);
      return NextResponse.json({ error: `Invalid question number. Must be between 1 and ${totalCount}.` }, { status: 404 });
    }

    // 4. Get English question
    console.log(`${logPrefix} Fetching English question...`);
    const { data: englishQuestion, error: englishError } = await supabase
      .from('questions')
      .select<string, Question>('*') // Specify return type
      .eq('topic_id', topicIdNum)
      .eq('question_number', currentQuestionNumber)
      .eq('language', 'English')
      .single();

    if (englishError && englishError.code !== 'PGRST116') {
      console.error(`${logPrefix} Error fetching English question:`, englishError);
      return NextResponse.json({ error: 'Failed to get English question.', details: englishError.message }, { status: 500 });
    }
    console.log(`${logPrefix} English question fetched (ID: ${englishQuestion?.id ?? 'Not Found'}).`);

    // 5. Get Chinese question
    console.log(`${logPrefix} Fetching Chinese question...`);
    const { data: chineseQuestion, error: chineseError } = await supabase
      .from('questions')
      .select<string, Question>('*') // Specify return type
      .eq('topic_id', topicIdNum)
      .eq('question_number', currentQuestionNumber)
      .eq('language', 'Chinese')
      .single();
    
    if (chineseError && chineseError.code !== 'PGRST116') {
      // Log error but don't necessarily fail the request if English version exists
      console.warn(`${logPrefix} Error fetching Chinese question:`, chineseError);
    }
    console.log(`${logPrefix} Chinese question fetched (ID: ${chineseQuestion?.id ?? 'Not Found'}).`);

    // 6. Get Answer (based on English question ID)
    let answerData: Answer | null = null;
    if (englishQuestion) {
      console.log(`${logPrefix} Fetching answer for question ID ${englishQuestion.id}...`);
      const { data: fetchedAnswer, error: answerError } = await supabase
        .from('answers')
        .select<string, Answer>('*')
        .eq('question_id', englishQuestion.id)
        .maybeSingle(); // Use maybeSingle to handle potentially missing answers gracefully

      if (answerError) {
        // Log error but don't fail the request
        console.warn(`${logPrefix} Error fetching answer:`, answerError);
      }
      answerData = fetchedAnswer;
      console.log(`${logPrefix} Answer fetched (ID: ${answerData?.id ?? 'Not Found'}).`);
    } else {
      console.log(`${logPrefix} Skipping answer fetch as English question not found.`);
    }

    // 7. Construct successful response
    const responseData: ApiResponseData = {
      topic: topicData,
      question_english: englishQuestion ?? null,
      question_chinese: chineseQuestion ?? null,
      answer: answerData,
      totalQuestions: totalCount,
    };

    console.log(`${logPrefix} Fetch successful. Returning data.`);
    return NextResponse.json(responseData, { status: 200 });

  } catch (err) {
    console.error(`${logPrefix} Detailed unexpected error:`, err);
    return NextResponse.json(
      { error: 'An unexpected server error occurred.' },
      { status: 500 }
    );
  } finally {
     console.log(`${logPrefix} Finished fetch attempt.`);
  }
} 