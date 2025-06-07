-- 先删除表
DROP TABLE IF EXISTS topics;
DROP TABLE IF EXISTS questions;
DROP TABLE IF EXISTS answers;

-- SQL Script to set up the database tables for CUHK Online Exam

-- Create topics table
CREATE TABLE IF NOT EXISTS topics (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL UNIQUE,
  display_name TEXT NOT NULL,
  chapter TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Create questions table
CREATE TABLE IF NOT EXISTS questions (
  id SERIAL PRIMARY KEY,
  topic_id INTEGER REFERENCES topics(id),
  question_number INTEGER NOT NULL,
  language TEXT NOT NULL,
  content TEXT NOT NULL,
  difficulty INTEGER,
  latex_content TEXT NOT NULL,
  scoring_criteria TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  UNIQUE(topic_id, question_number, language)
);

-- Create answers table
CREATE TABLE IF NOT EXISTS answers (
  id SERIAL PRIMARY KEY,
  question_id INTEGER REFERENCES questions(id),
  content TEXT NOT NULL,
  latex_content TEXT NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  UNIQUE(question_id)
);

-- Create indexes for better performance
CREATE INDEX IF NOT EXISTS questions_topic_id_idx ON questions(topic_id);
CREATE INDEX IF NOT EXISTS questions_language_idx ON questions(language);
CREATE INDEX IF NOT EXISTS answers_question_id_idx ON answers(question_id);

-- Enable Row Level Security (RLS)
ALTER TABLE topics ENABLE ROW LEVEL SECURITY;
ALTER TABLE questions ENABLE ROW LEVEL SECURITY;
ALTER TABLE answers ENABLE ROW LEVEL SECURITY;

-- Create policies for anonymous access (read-only and write access)
CREATE POLICY topics_anon_read ON topics FOR SELECT USING (true);
CREATE POLICY questions_anon_read ON questions FOR SELECT USING (true);
CREATE POLICY answers_anon_read ON answers FOR SELECT USING (true);

-- Add insert policies for anonymous users
CREATE POLICY topics_anon_insert ON topics FOR INSERT WITH CHECK (true);
CREATE POLICY questions_anon_insert ON questions FOR INSERT WITH CHECK (true);
CREATE POLICY answers_anon_insert ON answers FOR INSERT WITH CHECK (true);

-- Add update policies for anonymous users
CREATE POLICY topics_anon_update ON topics FOR UPDATE USING (true);
CREATE POLICY questions_anon_update ON questions FOR UPDATE USING (true);
CREATE POLICY answers_anon_update ON answers FOR UPDATE USING (true);

-- Insert initial test data
INSERT INTO topics (name, display_name, chapter) 
VALUES ('QuadraticEquationsInOneUnknown', 'Quadratic Equations In One Unknown', 'Compulsory Part Ch.1-4')
ON CONFLICT (name) DO NOTHING; 