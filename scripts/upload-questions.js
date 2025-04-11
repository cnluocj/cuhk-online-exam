// Script to upload questions and answers to Supabase
const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');
const path = require('path');

// Supabase connection details
const supabaseUrl = 'http://43.153.40.240:8000';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyAgCiAgICAicm9sZSI6ICJhbm9uIiwKICAgICJpc3MiOiAic3VwYWJhc2UtZGVtbyIsCiAgICAiaWF0IjogMTY0MTc2OTIwMCwKICAgICJleHAiOiAxNzk5NTM1NjAwCn0.dc_X5iR_VP_qT0zsiyj_I_OZ2T9FtRU2BBNWN8Bu4GE';

// Initialize Supabase client
const supabase = createClient(supabaseUrl, supabaseKey);

// 尝试不同的路径解析方式寻找题库
const possiblePaths = [
  path.resolve('../题库/Compulsory Part Ch.1-4/CompulsoryPart'),
  path.resolve('../../题库/Compulsory Part Ch.1-4/CompulsoryPart'),
  path.resolve('/Users/lcj/openai-ocr/题库/Compulsory Part Ch.1-4/CompulsoryPart')
];

let questionBankPath = null;

// 检查哪个路径是有效的
for (const testPath of possiblePaths) {
  try {
    if (fs.existsSync(testPath)) {
      questionBankPath = testPath;
      console.log(`Found question bank at: ${questionBankPath}`);
      break;
    }
  } catch (error) {
    console.log(`Path not valid: ${testPath}`);
  }
}

if (!questionBankPath) {
  console.error('Could not find the question bank path. Please specify the correct path.');
  process.exit(1);
}

// Function to extract question number from filename
function extractQuestionNumber(filename) {
  const match = filename.match(/Q(\d+)\.tex$/);
  return match ? parseInt(match[1]) : null;
}

// Function to create a topic
async function createTopic(topicName, displayName, chapter) {
  console.log(`Creating topic: ${displayName}`);
  
  try {
    // 首先检查主题是否已存在
    const { data: existingTopics, error: fetchError } = await supabase
      .from('topics')
      .select('id')
      .eq('name', topicName)
      .limit(1);
    
    if (fetchError) {
      console.error(`Error checking if topic ${topicName} exists:`, fetchError);
      return null;
    }
    
    // 如果主题已存在，返回其ID
    if (existingTopics && existingTopics.length > 0) {
      console.log(`Topic ${topicName} already exists with ID: ${existingTopics[0].id}`);
      return existingTopics[0].id;
    }
    
    // 主题不存在，创建新主题
    const { data, error } = await supabase
      .from('topics')
      .insert([
        {
          name: topicName,
          display_name: displayName,
          chapter: chapter
        }
      ])
      .select();

    if (error) {
      console.error(`Error creating topic ${topicName}:`, error);
      return null;
    }

    console.log(`Topic ${topicName} created with ID: ${data[0].id}`);
    return data[0].id;
  } catch (error) {
    console.error(`Unexpected error creating topic ${topicName}:`, error);
    return null;
  }
}

// Function to insert a question
async function insertQuestion(topicId, questionNumber, language, content, latexContent) {
  console.log(`Inserting question: ${language} - ${questionNumber}`);
  
  try {
    // 首先检查问题是否已存在
    const { data: existingQuestions, error: fetchError } = await supabase
      .from('questions')
      .select('id')
      .eq('topic_id', topicId)
      .eq('question_number', questionNumber)
      .eq('language', language)
      .limit(1);
    
    if (fetchError) {
      console.error(`Error checking if question exists:`, fetchError);
      return null;
    }
    
    // 如果问题已存在，返回其ID
    if (existingQuestions && existingQuestions.length > 0) {
      console.log(`Question already exists with ID: ${existingQuestions[0].id}`);
      return existingQuestions[0].id;
    }
    
    // 问题不存在，创建新问题
    const { data, error } = await supabase
      .from('questions')
      .insert([
        {
          topic_id: topicId,
          question_number: questionNumber,
          language: language,
          content: content,
          latex_content: latexContent
        }
      ])
      .select();

    if (error) {
      console.error(`Error inserting question ${questionNumber}:`, error);
      return null;
    }

    console.log(`Question inserted with ID: ${data[0].id}`);
    return data[0].id;
  } catch (error) {
    console.error(`Unexpected error inserting question ${questionNumber}:`, error);
    return null;
  }
}

// Function to insert an answer
async function insertAnswer(questionId, content, latexContent) {
  console.log(`Inserting answer for question ID: ${questionId}`);
  
  try {
    // 首先检查答案是否已存在
    const { data: existingAnswers, error: fetchError } = await supabase
      .from('answers')
      .select('id')
      .eq('question_id', questionId)
      .limit(1);
    
    if (fetchError) {
      console.error(`Error checking if answer exists:`, fetchError);
      return false;
    }
    
    // 如果答案已存在，不再插入
    if (existingAnswers && existingAnswers.length > 0) {
      console.log(`Answer already exists with ID: ${existingAnswers[0].id}`);
      return true;
    }
    
    // 答案不存在，创建新答案
    const { error } = await supabase
      .from('answers')
      .insert([
        {
          question_id: questionId,
          content: content,
          latex_content: latexContent
        }
      ]);

    if (error) {
      console.error(`Error inserting answer for question ${questionId}:`, error);
      return false;
    }

    console.log(`Answer inserted successfully`);
    return true;
  } catch (error) {
    console.error(`Unexpected error inserting answer for question ${questionId}:`, error);
    return false;
  }
}

// Function to format display name from topic name
function formatDisplayName(topicName) {
  return topicName
    .replace(/([A-Z])/g, ' $1')
    .trim()
    .replace(/^./, str => str.toUpperCase());
}

// Main function to process and upload questions
async function uploadQuestions() {
  try {
    // Get English and Chinese directory paths
    const englishPath = path.join(questionBankPath, 'English');
    const chinesePath = path.join(questionBankPath, 'Chinese');
    
    console.log(`English path: ${englishPath}`);
    console.log(`Chinese path: ${chinesePath}`);
    
    // Verify the paths exist
    if (!fs.existsSync(englishPath)) {
      console.error(`English path does not exist: ${englishPath}`);
      return;
    }
    
    // Get topics (subdirectories)
    const topics = fs.readdirSync(englishPath)
      .filter(item => {
        const itemPath = path.join(englishPath, item);
        return fs.existsSync(itemPath) && fs.statSync(itemPath).isDirectory();
      });
    
    console.log(`Found ${topics.length} topics: ${topics.join(', ')}`);
    
    // Process each topic
    for (const topic of topics) {
      console.log(`Processing topic: ${topic}`);
      
      // Create the topic in the database
      const displayName = formatDisplayName(topic);
      const chapter = 'Compulsory Part Ch.1-4';
      const topicId = await createTopic(topic, displayName, chapter);
      
      if (!topicId) {
        console.error(`Failed to create topic ${topic}. Skipping...`);
        continue;
      }
      
      // Process English questions and answers
      const englishQuestionsPath = path.join(englishPath, topic, 'Questions');
      const englishAnswersPath = path.join(englishPath, topic, 'Answers');
      
      if (fs.existsSync(englishQuestionsPath) && fs.existsSync(englishAnswersPath)) {
        // Get all question files
        const questionFiles = fs.readdirSync(englishQuestionsPath)
          .filter(file => file.endsWith('.tex'))
          .sort((a, b) => {
            return extractQuestionNumber(a) - extractQuestionNumber(b);
          });
        
        console.log(`Found ${questionFiles.length} English questions`);
        
        // Process each question
        for (const questionFile of questionFiles) {
          const questionNumber = extractQuestionNumber(questionFile);
          
          if (!questionNumber) {
            console.warn(`Could not extract question number from ${questionFile}. Skipping...`);
            continue;
          }
          
          // Read question content
          const questionContent = fs.readFileSync(
            path.join(englishQuestionsPath, questionFile),
            'utf8'
          ).trim();
          
          // Insert question
          const questionId = await insertQuestion(
            topicId,
            questionNumber,
            'English',
            questionContent,
            questionContent
          );
          
          if (!questionId) {
            console.error(`Failed to insert English question ${questionNumber}. Skipping answer...`);
            continue;
          }
          
          // Read and insert answer if it exists
          const answerFile = questionFile.replace('Q', 'A');
          const answerPath = path.join(englishAnswersPath, answerFile);
          
          if (fs.existsSync(answerPath)) {
            const answerContent = fs.readFileSync(answerPath, 'utf8').trim();
            await insertAnswer(questionId, answerContent, answerContent);
          } else {
            console.warn(`Answer file ${answerFile} not found. Skipping...`);
          }
        }
      } else {
        console.warn(`English questions or answers folder not found for topic ${topic}`);
        console.log(`Checked paths: ${englishQuestionsPath}, ${englishAnswersPath}`);
      }
      
      // Process Chinese questions and answers
      const chineseQuestionsPath = path.join(chinesePath, topic, 'Questions');
      const chineseAnswersPath = path.join(chinesePath, topic, 'Answers');
      
      if (fs.existsSync(chineseQuestionsPath) && fs.existsSync(chineseAnswersPath)) {
        // Get all question files
        const questionFiles = fs.readdirSync(chineseQuestionsPath)
          .filter(file => file.endsWith('.tex'))
          .sort((a, b) => {
            return extractQuestionNumber(a) - extractQuestionNumber(b);
          });
        
        console.log(`Found ${questionFiles.length} Chinese questions`);
        
        // Process each question
        for (const questionFile of questionFiles) {
          const questionNumber = extractQuestionNumber(questionFile);
          
          if (!questionNumber) {
            console.warn(`Could not extract question number from ${questionFile}. Skipping...`);
            continue;
          }
          
          // Read question content
          const questionContent = fs.readFileSync(
            path.join(chineseQuestionsPath, questionFile),
            'utf8'
          ).trim();
          
          // Insert question
          const questionId = await insertQuestion(
            topicId,
            questionNumber,
            'Chinese',
            questionContent,
            questionContent
          );
          
          if (!questionId) {
            console.error(`Failed to insert Chinese question ${questionNumber}. Skipping answer...`);
            continue;
          }
          
          // Read and insert answer if it exists
          const answerFile = questionFile.replace('Q', 'A');
          const answerPath = path.join(chineseAnswersPath, answerFile);
          
          if (fs.existsSync(answerPath)) {
            const answerContent = fs.readFileSync(answerPath, 'utf8').trim();
            await insertAnswer(questionId, answerContent, answerContent);
          } else {
            console.warn(`Answer file ${answerFile} not found. Skipping...`);
          }
        }
      } else {
        console.warn(`Chinese questions or answers folder not found for topic ${topic}`);
        console.log(`Checked paths: ${chineseQuestionsPath}, ${chineseAnswersPath}`);
      }
    }
    
    console.log('Question upload completed successfully!');
  } catch (error) {
    console.error('Error uploading questions:', error);
  }
}

// Execute the upload
uploadQuestions(); 