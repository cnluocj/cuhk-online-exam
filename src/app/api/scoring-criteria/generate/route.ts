import { NextResponse, NextRequest } from 'next/server';

interface DifyRequest {
  inputs: {
    question: string;
    answer: string;
  };
  response_mode: string;
  user: string;
}

// DifyResponse interface removed - using dynamic response parsing

interface GenerateRequest {
  question: string;
  answer: string;
}

interface GenerateResponse {
  scoring_criteria: string;
  success: boolean;
  error?: string;
}

export async function POST(request: NextRequest): Promise<NextResponse<GenerateResponse>> {
  try {
    const body: GenerateRequest = await request.json();
    const { question, answer } = body;

    if (!question || !answer) {
      return NextResponse.json({
        success: false,
        error: 'Question and answer are required',
        scoring_criteria: ''
      }, { status: 400 });
    }

    // Dify API 配置 - 评分标准生成工作流
    const difyApiKey = process.env.SCORING_API_KEY || 'app-nGvzcgWHGkeO6W3aVIWlkgQO';
    const difyEndpoint = process.env.SCORING_API_ENDPOINT || 'http://43.134.17.26:8080/v1/workflows/run';

    const difyRequest: DifyRequest = {
      inputs: {
        question: question,
        answer: answer
      },
      response_mode: "blocking",
      user: "admin"
    };

    console.log('[Scoring Criteria API] Calling Dify API with:', {
      question: question.substring(0, 100) + '...',
      answer: answer.substring(0, 100) + '...'
    });

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
      console.error('[Scoring Criteria API] Dify API error:', {
        status: response.status,
        statusText: response.statusText,
        error: errorText
      });
      
      return NextResponse.json({
        success: false,
        error: `Dify API error: ${response.status} ${response.statusText}`,
        scoring_criteria: ''
      }, { status: 500 });
    }

    const difyResponse = await response.json();
    console.log('[Scoring Criteria API] Dify API response received:', JSON.stringify(difyResponse, null, 2));

    // Dify workflow 响应格式可能不同，需要检查多种可能的字段
    let scoringCriteria = '';

    if (difyResponse.data && difyResponse.data.outputs) {
      // Workflow 输出格式
      scoringCriteria = difyResponse.data.outputs.text || difyResponse.data.outputs.result || '';
    } else if (difyResponse.answer) {
      // Chat 格式
      scoringCriteria = difyResponse.answer;
    } else if (difyResponse.result) {
      // 其他可能的格式
      scoringCriteria = difyResponse.result;
    }

    if (!scoringCriteria) {
      console.error('[Scoring Criteria API] No scoring criteria found in response:', difyResponse);
      return NextResponse.json({
        success: false,
        error: 'No scoring criteria generated',
        scoring_criteria: ''
      }, { status: 500 });
    }

    return NextResponse.json({
      success: true,
      scoring_criteria: scoringCriteria
    });

  } catch (error) {
    console.error('[Scoring Criteria API] Error:', error);
    return NextResponse.json({
      success: false,
      error: 'Internal server error',
      scoring_criteria: ''
    }, { status: 500 });
  }
}
