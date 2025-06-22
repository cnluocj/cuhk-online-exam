import { NextResponse, NextRequest } from 'next/server';

interface AutoScoreRequest {
  question: string;
  standardAnswer: string;
  studentAnswer: string;
  scoringCriteria: string;
}

interface AutoScoreResponse {
  success: boolean;
  score: string;
  feedback: string;
  error?: string;
}

export async function POST(request: NextRequest): Promise<NextResponse<AutoScoreResponse>> {
  try {
    const body: AutoScoreRequest = await request.json();
    const { question, standardAnswer, studentAnswer, scoringCriteria } = body;

    if (!question || !standardAnswer || !studentAnswer || !scoringCriteria) {
      return NextResponse.json({
        success: false,
        score: '',
        feedback: '',
        error: 'Missing required fields: question, standardAnswer, studentAnswer, or scoringCriteria'
      }, { status: 400 });
    }

    // Clean student answer: remove image links, keep only text content
    const cleanedStudentAnswer = cleanStudentAnswer(studentAnswer);

    console.log('[Auto Score API] Processing scoring request:', {
      question: question.substring(0, 100) + '...',
      standardAnswer: standardAnswer.substring(0, 100) + '...',
      studentAnswer: cleanedStudentAnswer.substring(0, 100) + '...',
      scoringCriteria: scoringCriteria.substring(0, 100) + '...'
    });

    // Dify API configuration - Auto scoring workflow
    const difyApiKey = process.env.SCORING_AUTO_API_KEY || 'app-ISbGMnSzONo6ow83Ph4z7CM7';
    const difyEndpoint = process.env.SCORING_AUTO_API_ENDPOINT || 'http://43.134.17.26:8080/v1/workflows/run';

    const difyRequest = {
      inputs: {
        scoring_criteria: scoringCriteria,
        question: question,
        answer: cleanedStudentAnswer
      },
      response_mode: "blocking",
      user: "auto-scorer"
    };

    console.log('[Auto Score API] Calling Dify API with request:', JSON.stringify(difyRequest, null, 2));

    const response = await fetch(difyEndpoint, {
      method: 'POST',
      headers: {
        'Authorization': `Bearer ${difyApiKey}`,
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(difyRequest),
    });

    if (!response.ok) {
      const errorText = await response.text();
      console.error('[Auto Score API] Dify API error:', {
        status: response.status,
        statusText: response.statusText,
        error: errorText
      });
      
      return NextResponse.json({
        success: false,
        score: '',
        feedback: '',
        error: `Dify API error: ${response.status} ${response.statusText}`
      }, { status: 500 });
    }

    const difyResponse = await response.json();
    console.log('[Auto Score API] Dify API response received:', JSON.stringify(difyResponse, null, 2));

    // Parse Dify workflow response
    let scoreResult = '';
    let feedbackResult = '';
    
    if (difyResponse.data && difyResponse.data.outputs) {
      // Workflow 输出格式
      const outputs = difyResponse.data.outputs;
      scoreResult = outputs.score || outputs.result || outputs.text || '';
      feedbackResult = outputs.feedback || outputs.comment || outputs.explanation || '';
      
      // If there's only one output field, try to parse it
      if (!feedbackResult && scoreResult) {
        const parsed = parseScoreAndFeedback(scoreResult);
        scoreResult = parsed.score;
        feedbackResult = parsed.feedback;
      }
    } else if (difyResponse.answer) {
      // Chat 格式
      const parsed = parseScoreAndFeedback(difyResponse.answer);
      scoreResult = parsed.score;
      feedbackResult = parsed.feedback;
    }

    if (!scoreResult) {
      console.error('[Auto Score API] No score found in response:', difyResponse);
      return NextResponse.json({
        success: false,
        score: '',
        feedback: '',
        error: 'No score generated from Dify workflow'
      }, { status: 500 });
    }

    return NextResponse.json({
      success: true,
      score: scoreResult,
      feedback: feedbackResult
    });

  } catch (error) {
    console.error('[Auto Score API] Error:', error);
    return NextResponse.json({
      success: false,
      score: '',
      feedback: '',
      error: 'Internal server error'
    }, { status: 500 });
  }
}

// Clean student answer: remove image links, keep only text content
function cleanStudentAnswer(answer: string): string {
  console.log('[Clean Answer] Original answer:', answer);

  // Remove Markdown image syntax ![alt](url "title") or ![alt](url)
  // This regex matches: ![any text](any URL "any title")
  let cleaned = answer.replace(/!\[.*?\]\([^)]*?"[^"]*"\)/g, '');

  // Remove image syntax without title ![alt](url)
  cleaned = cleaned.replace(/!\[.*?\]\([^)]*\)/g, '');

  // Remove HTML img tags
  cleaned = cleaned.replace(/<img[^>]*>/gi, '');

  // Remove direct image links (http/https image URLs)
  cleaned = cleaned.replace(/https?:\/\/[^\s]+\.(jpg|jpeg|png|gif|bmp|webp)/gi, '');

  // Clean up excessive blank lines (consecutive newlines)
  cleaned = cleaned.replace(/\n\s*\n\s*\n/g, '\n\n');

  // Clean up leading and trailing whitespace
  cleaned = cleaned.trim();

  console.log('[Clean Answer] Cleaned answer:', cleaned);

  return cleaned;
}

// Parse text containing score and feedback (supports both English and Chinese)
function parseScoreAndFeedback(text: string): { score: string; feedback: string } {
  // Priority patterns for total score (English)
  const englishTotalScorePatterns = [
    /(?:Total|Total Score|Final Score)[:：]?\s*(\d+(?:\.\d+)?)\s*(?:pts?|points?)\s*(?:\(out of\s*(\d+(?:\.\d+)?)\s*(?:pts?|points?)\))?/i,
    /(?:Total|Total Score|Final Score)[:：]?\s*(\d+(?:\.\d+)?)\s*\/\s*(\d+(?:\.\d+)?)\s*(?:pts?|points?)?/i,
    /(?:Total|Total Score|Final Score)[:：]?\s*(\d+(?:\.\d+)?)\s*(?:pts?|points?)?/i,
  ];

  // Priority patterns for total score (Chinese - for backward compatibility)
  const chineseTotalScorePatterns = [
    /(?:总分|共计|总计|最终得分)[:：]?\s*(\d+(?:\.\d+)?)\s*分/i,
    /(?:总分|共计|总计|最终得分)[:：]?\s*(\d+(?:\.\d+)?)\s*(?:\/|\(满分)\s*(\d+(?:\.\d+)?)\s*分/i,
    /(\d+(?:\.\d+)?)\s*分\s*(?:\(满分\s*(\d+(?:\.\d+)?)\s*分\))/i,
  ];

  // Try English total score patterns first
  for (const pattern of englishTotalScorePatterns) {
    const match = text.match(pattern);
    if (match) {
      // If there's max score info, format as "score/max"
      if (match[2]) {
        return {
          score: `${match[1]}/${match[2]}`,
          feedback: text
        };
      } else {
        return {
          score: match[1],
          feedback: text
        };
      }
    }
  }

  // Try Chinese total score patterns for backward compatibility
  for (const pattern of chineseTotalScorePatterns) {
    const match = text.match(pattern);
    if (match) {
      // If there's max score info, format as "score/max"
      if (match[2]) {
        return {
          score: `${match[1]}/${match[2]}`,
          feedback: text
        };
      } else {
        return {
          score: match[1],
          feedback: text
        };
      }
    }
  }

  // If no total score found, try other score patterns (English and Chinese)
  const scorePatterns = [
    // English patterns
    /(?:Score|Points?)[:：]\s*(\d+(?:\.\d+)?(?:\/\d+)?(?:%)?)/i,
    /(\d+(?:\.\d+)?(?:\/\d+)?(?:%)?)(?:\s*pts?|\s*points?)/i,
    // Chinese patterns
    /(?:分数|得分|score)[:：]\s*(\d+(?:\.\d+)?(?:\/\d+)?(?:%)?)/i,
    /(\d+(?:\.\d+)?(?:\/\d+)?(?:%)?)(?:\s*分|\s*points?)/i,
  ];

  for (const pattern of scorePatterns) {
    const match = text.match(pattern);
    if (match) {
      return {
        score: match[1],
        feedback: text
      };
    }
  }

  // Last resort: extract first number (but avoid step numbers)
  const numberMatch = text.match(/(?:得|获得|总共|共|scored|earned|received)\s*(\d+(?:\.\d+)?)/i);
  if (numberMatch) {
    return {
      score: numberMatch[1],
      feedback: text
    };
  }

  return {
    score: 'Unable to parse score',
    feedback: text
  };
}
