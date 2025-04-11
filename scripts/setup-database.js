// Script to set up the Supabase database structure
const { createClient } = require('@supabase/supabase-js');

// Supabase connection details
const supabaseUrl = 'http://43.153.40.240:8000';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyAgCiAgICAicm9sZSI6ICJhbm9uIiwKICAgICJpc3MiOiAic3VwYWJhc2UtZGVtbyIsCiAgICAiaWF0IjogMTY0MTc2OTIwMCwKICAgICJleHAiOiAxNzk5NTM1NjAwCn0.dc_X5iR_VP_qT0zsiyj_I_OZ2T9FtRU2BBNWN8Bu4GE';

// Initialize Supabase client
const supabase = createClient(supabaseUrl, supabaseKey);

async function setupDatabase() {
  console.log('Setting up database tables...');

  try {
    // Create topics table
    const { error: topicsError } = await supabase.rpc('create_table_if_not_exists', {
      table_name: 'topics',
      column_definitions: `
        id SERIAL PRIMARY KEY,
        name TEXT NOT NULL UNIQUE,
        display_name TEXT NOT NULL,
        chapter TEXT,
        created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
      `
    });

    if (topicsError) {
      throw topicsError;
    }
    console.log('Topics table created successfully');

    // Create questions table
    const { error: questionsError } = await supabase.rpc('create_table_if_not_exists', {
      table_name: 'questions',
      column_definitions: `
        id SERIAL PRIMARY KEY,
        topic_id INTEGER REFERENCES topics(id),
        question_number INTEGER NOT NULL,
        language TEXT NOT NULL,
        content TEXT NOT NULL,
        difficulty INTEGER,
        latex_content TEXT NOT NULL,
        created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
        UNIQUE(topic_id, question_number, language)
      `
    });

    if (questionsError) {
      throw questionsError;
    }
    console.log('Questions table created successfully');

    // Create answers table
    const { error: answersError } = await supabase.rpc('create_table_if_not_exists', {
      table_name: 'answers',
      column_definitions: `
        id SERIAL PRIMARY KEY,
        question_id INTEGER REFERENCES questions(id),
        content TEXT NOT NULL,
        latex_content TEXT NOT NULL,
        created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
        UNIQUE(question_id)
      `
    });

    if (answersError) {
      throw answersError;
    }
    console.log('Answers table created successfully');

    console.log('Database setup completed successfully');
  } catch (error) {
    console.error('Error setting up database:', error);
  }
}

// Execute the setup
setupDatabase(); 