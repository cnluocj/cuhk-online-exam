import { NextResponse } from 'next/server';
import supabase from '@/utils/supabase';

// Define the expected structure for a topic, including question count
interface Topic {
  id: number;
  name: string;
  display_name: string;
  chapter: string;
  // Add other fields from your 'topics' table if necessary
}

interface TopicWithCount extends Topic {
  questionCount: number;
}

export async function GET() {
  console.log('[API /api/topics] Starting topic fetch...');
  try {
    // Get all topics
    const { data: topicsData, error: topicsError } = await supabase
      .from('topics')
      .select('*') // Select all columns you need, adjust if necessary
      .order('display_name');

    if (topicsError) {
      console.error('[API /api/topics] Supabase error fetching topics:', topicsError);
      // Use NextResponse to return a standard error response
      return NextResponse.json(
        { error: 'Failed to fetch topics from database.', details: topicsError.message },
        { status: 500 }
      );
    }

    if (!topicsData) {
      console.log('[API /api/topics] No topics found.');
      return NextResponse.json([], { status: 200 }); // Return empty array if no topics
    }

    console.log(`[API /api/topics] ${topicsData.length} topics fetched successfully, getting counts...`);

    // Get question count for each topic
    const topicsWithQuestionCount: TopicWithCount[] = await Promise.all(
      topicsData.map(async (topic: Topic) => {
        const { count, error: countError } = await supabase
          .from('questions')
          .select('*', { count: 'exact', head: true })
          .eq('topic_id', topic.id)
          .eq('language', 'English'); // Assuming English count represents total

        if (countError) {
          // Log count error but don't stop the whole process for this single topic
          console.error(`[API /api/topics] Error getting question count for topic ${topic.name} (ID: ${topic.id}):`, countError);
          return { ...topic, questionCount: 0 }; // Return topic with 0 count on specific error
        }

        return { ...topic, questionCount: count || 0 };
      })
    );

    console.log('[API /api/topics] Counts fetched. Returning data.');
    // Use NextResponse to return the successful response
    return NextResponse.json(topicsWithQuestionCount, { status: 200 });

  } catch (err) {
    // Log the detailed unexpected error object
    console.error('[API /api/topics] Detailed unexpected error fetching topic list:', err);
    // Return a generic server error response
    return NextResponse.json(
      { error: 'An unexpected error occurred on the server.' },
      { status: 500 }
    );
  } finally {
    console.log('[API /api/topics] Finished topic fetch attempt.');
  }
} 