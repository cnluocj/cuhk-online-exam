import { NextResponse, NextRequest } from 'next/server';
import supabase from '@/utils/supabase';

interface SaveRequest {
  questionId: number;
  scoringCriteria: string;
}

interface SaveResponse {
  success: boolean;
  error?: string;
}

export async function POST(request: NextRequest): Promise<NextResponse<SaveResponse>> {
  try {
    const body: SaveRequest = await request.json();
    const { questionId, scoringCriteria } = body;

    if (!questionId || !scoringCriteria) {
      return NextResponse.json({
        success: false,
        error: 'Question ID and scoring criteria are required'
      }, { status: 400 });
    }

    console.log(`[Save Scoring Criteria API] Saving criteria for question ${questionId}`);

    // 更新题目的评分标准
    const { error } = await supabase
      .from('questions')
      .update({ scoring_criteria: scoringCriteria })
      .eq('id', questionId);

    if (error) {
      console.error('[Save Scoring Criteria API] Database error:', error);
      return NextResponse.json({
        success: false,
        error: 'Failed to save scoring criteria'
      }, { status: 500 });
    }

    console.log(`[Save Scoring Criteria API] Successfully saved criteria for question ${questionId}`);

    return NextResponse.json({
      success: true
    });

  } catch (error) {
    console.error('[Save Scoring Criteria API] Error:', error);
    return NextResponse.json({
      success: false,
      error: 'Internal server error'
    }, { status: 500 });
  }
}
