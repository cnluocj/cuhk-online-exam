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

    // 清理学生答案：移除图片链接，只保留文字内容
    const cleanedStudentAnswer = cleanStudentAnswer(studentAnswer);

    console.log('[Auto Score API] Processing scoring request:', {
      question: question.substring(0, 100) + '...',
      standardAnswer: standardAnswer.substring(0, 100) + '...',
      studentAnswer: cleanedStudentAnswer.substring(0, 100) + '...',
      scoringCriteria: scoringCriteria.substring(0, 100) + '...'
    });

    // Dify API 配置 - 自动打分工作流
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

    // 解析 Dify workflow 响应
    let scoreResult = '';
    let feedbackResult = '';
    
    if (difyResponse.data && difyResponse.data.outputs) {
      // Workflow 输出格式
      const outputs = difyResponse.data.outputs;
      scoreResult = outputs.score || outputs.result || outputs.text || '';
      feedbackResult = outputs.feedback || outputs.comment || outputs.explanation || '';
      
      // 如果只有一个输出字段，尝试解析它
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

// 清理学生答案：移除图片链接，只保留文字内容
function cleanStudentAnswer(answer: string): string {
  console.log('[Clean Answer] Original answer:', answer);

  // 移除 Markdown 图片语法 ![alt](url "title") 或 ![alt](url)
  // 这个正则表达式匹配: ![任意文字](任意URL "任意标题")
  let cleaned = answer.replace(/!\[.*?\]\([^)]*?"[^"]*"\)/g, '');

  // 移除没有标题的图片语法 ![alt](url)
  cleaned = cleaned.replace(/!\[.*?\]\([^)]*\)/g, '');

  // 移除 HTML img 标签
  cleaned = cleaned.replace(/<img[^>]*>/gi, '');

  // 移除直接的图片链接（http/https开头的图片URL）
  cleaned = cleaned.replace(/https?:\/\/[^\s]+\.(jpg|jpeg|png|gif|bmp|webp)/gi, '');

  // 清理多余的空行（连续的换行符）
  cleaned = cleaned.replace(/\n\s*\n\s*\n/g, '\n\n');

  // 清理开头和结尾的空白
  cleaned = cleaned.trim();

  console.log('[Clean Answer] Cleaned answer:', cleaned);

  return cleaned;
}

// 解析包含分数和反馈的文本
function parseScoreAndFeedback(text: string): { score: string; feedback: string } {
  // 优先寻找总分相关的模式
  const totalScorePatterns = [
    /(?:总分|共计|总计|最终得分)[:：]?\s*(\d+(?:\.\d+)?)\s*分/i,
    /(?:总分|共计|总计|最终得分)[:：]?\s*(\d+(?:\.\d+)?)\s*(?:\/|\(满分)\s*(\d+(?:\.\d+)?)\s*分/i,
    /(\d+(?:\.\d+)?)\s*分\s*(?:\(满分\s*(\d+(?:\.\d+)?)\s*分\))/i,
  ];

  // 先尝试找总分
  for (const pattern of totalScorePatterns) {
    const match = text.match(pattern);
    if (match) {
      // 如果有满分信息，格式化为 "得分/满分"
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

  // 如果没找到总分，尝试其他分数模式
  const scorePatterns = [
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

  // 最后尝试提取第一个数字（但要避免步骤编号）
  const numberMatch = text.match(/(?:得|获得|总共|共)\s*(\d+(?:\.\d+)?)/i);
  if (numberMatch) {
    return {
      score: numberMatch[1],
      feedback: text
    };
  }

  return {
    score: '未能解析分数',
    feedback: text
  };
}
