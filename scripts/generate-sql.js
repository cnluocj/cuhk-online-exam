// 用于从题库生成SQL插入语句的脚本
const fs = require('fs');
const path = require('path');

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

// 输出SQL文件路径
const outputFile = path.resolve('./all-questions.sql');

// 函数用于从文件名中提取问题编号
function extractQuestionNumber(filename) {
  const match = filename.match(/Q(\d+)\.tex$/);
  return match ? parseInt(match[1]) : null;
}

// 函数用于格式化显示名称
function formatDisplayName(topicName) {
  return topicName
    .replace(/([A-Z])/g, ' $1')
    .trim()
    .replace(/^./, str => str.toUpperCase());
}

// 函数用于转义SQL字符串
function escapeSqlString(str) {
  return str.replace(/'/g, "''");
}

// 主函数，用于生成SQL
async function generateSql() {
  try {
    // 获取英文和中文目录路径
    const englishPath = path.join(questionBankPath, 'English');
    const chinesePath = path.join(questionBankPath, 'Chinese');
    
    console.log(`English path: ${englishPath}`);
    console.log(`Chinese path: ${chinesePath}`);
    
    // 验证路径是否存在
    if (!fs.existsSync(englishPath)) {
      console.error(`English path does not exist: ${englishPath}`);
      return;
    }
    
    // 获取主题（子目录）
    const topics = fs.readdirSync(englishPath)
      .filter(item => {
        const itemPath = path.join(englishPath, item);
        return fs.existsSync(itemPath) && fs.statSync(itemPath).isDirectory();
      });
    
    console.log(`Found ${topics.length} topics: ${topics.join(', ')}`);
    
    // 打开输出文件进行写入
    const sqlStream = fs.createWriteStream(outputFile);
    
    // 写入SQL文件头
    sqlStream.write('-- 自动生成的SQL插入语句，用于导入CUHK考试题库\n\n');
    
    // 遍历处理每个主题
    for (const topic of topics) {
      console.log(`Processing topic: ${topic}`);
      
      const displayName = formatDisplayName(topic);
      const chapter = 'Compulsory Part Ch.1-4';
      
      // 生成主题插入SQL
      sqlStream.write(`-- 插入主题: ${displayName}\n`);
      sqlStream.write(`INSERT INTO topics (name, display_name, chapter)\n`);
      sqlStream.write(`VALUES ('${topic}', '${displayName}', '${chapter}')\n`);
      sqlStream.write(`ON CONFLICT (name) DO NOTHING;\n\n`);
      
      // 处理英文问题和答案
      const englishQuestionsPath = path.join(englishPath, topic, 'Questions');
      const englishAnswersPath = path.join(englishPath, topic, 'Answers');
      
      if (fs.existsSync(englishQuestionsPath) && fs.existsSync(englishAnswersPath)) {
        // 获取所有问题文件
        const questionFiles = fs.readdirSync(englishQuestionsPath)
          .filter(file => file.endsWith('.tex'))
          .sort((a, b) => {
            return extractQuestionNumber(a) - extractQuestionNumber(b);
          });
        
        console.log(`Found ${questionFiles.length} English questions`);
        
        // 处理每个问题
        for (const questionFile of questionFiles) {
          const questionNumber = extractQuestionNumber(questionFile);
          
          if (!questionNumber) {
            console.warn(`Could not extract question number from ${questionFile}. Skipping...`);
            continue;
          }
          
          // 读取问题内容
          const questionPath = path.join(englishQuestionsPath, questionFile);
          const questionContent = fs.readFileSync(questionPath, 'utf8').trim();
          const escapedQuestionContent = escapeSqlString(questionContent);
          
          // 生成问题插入SQL
          sqlStream.write(`-- 插入英文问题 ${questionNumber}\n`);
          sqlStream.write(`INSERT INTO questions (topic_id, question_number, language, content, latex_content)\n`);
          sqlStream.write(`VALUES (\n`);
          sqlStream.write(`  (SELECT id FROM topics WHERE name = '${topic}'),\n`);
          sqlStream.write(`  ${questionNumber},\n`);
          sqlStream.write(`  'English',\n`);
          sqlStream.write(`  '${escapedQuestionContent}',\n`);
          sqlStream.write(`  '${escapedQuestionContent}'\n`);
          sqlStream.write(`)\n`);
          sqlStream.write(`ON CONFLICT (topic_id, question_number, language) DO NOTHING;\n\n`);
          
          // 读取并插入答案（如果存在）
          const answerFile = questionFile.replace('Q', 'A');
          const answerPath = path.join(englishAnswersPath, answerFile);
          
          if (fs.existsSync(answerPath)) {
            const answerContent = fs.readFileSync(answerPath, 'utf8').trim();
            const escapedAnswerContent = escapeSqlString(answerContent);
            
            // 生成答案插入SQL
            sqlStream.write(`-- 插入英文问题 ${questionNumber} 的答案\n`);
            sqlStream.write(`INSERT INTO answers (question_id, content, latex_content)\n`);
            sqlStream.write(`VALUES (\n`);
            sqlStream.write(`  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = '${topic}')\n`);
            sqlStream.write(`   AND question_number = ${questionNumber} AND language = 'English'),\n`);
            sqlStream.write(`  '${escapedAnswerContent}',\n`);
            sqlStream.write(`  '${escapedAnswerContent}'\n`);
            sqlStream.write(`)\n`);
            sqlStream.write(`ON CONFLICT (question_id) DO NOTHING;\n\n`);
          } else {
            console.warn(`Answer file ${answerFile} not found. Skipping...`);
          }
        }
      } else {
        console.warn(`English questions or answers folder not found for topic ${topic}`);
      }
      
      // 处理中文问题和答案
      const chineseQuestionsPath = path.join(chinesePath, topic, 'Questions');
      const chineseAnswersPath = path.join(chinesePath, topic, 'Answers');
      
      if (fs.existsSync(chineseQuestionsPath) && fs.existsSync(chineseAnswersPath)) {
        // 获取所有问题文件
        const questionFiles = fs.readdirSync(chineseQuestionsPath)
          .filter(file => file.endsWith('.tex'))
          .sort((a, b) => {
            return extractQuestionNumber(a) - extractQuestionNumber(b);
          });
        
        console.log(`Found ${questionFiles.length} Chinese questions`);
        
        // 处理每个问题
        for (const questionFile of questionFiles) {
          const questionNumber = extractQuestionNumber(questionFile);
          
          if (!questionNumber) {
            console.warn(`Could not extract question number from ${questionFile}. Skipping...`);
            continue;
          }
          
          // 读取问题内容
          const questionPath = path.join(chineseQuestionsPath, questionFile);
          const questionContent = fs.readFileSync(questionPath, 'utf8').trim();
          const escapedQuestionContent = escapeSqlString(questionContent);
          
          // 生成问题插入SQL
          sqlStream.write(`-- 插入中文问题 ${questionNumber}\n`);
          sqlStream.write(`INSERT INTO questions (topic_id, question_number, language, content, latex_content)\n`);
          sqlStream.write(`VALUES (\n`);
          sqlStream.write(`  (SELECT id FROM topics WHERE name = '${topic}'),\n`);
          sqlStream.write(`  ${questionNumber},\n`);
          sqlStream.write(`  'Chinese',\n`);
          sqlStream.write(`  '${escapedQuestionContent}',\n`);
          sqlStream.write(`  '${escapedQuestionContent}'\n`);
          sqlStream.write(`)\n`);
          sqlStream.write(`ON CONFLICT (topic_id, question_number, language) DO NOTHING;\n\n`);
          
          // 读取并插入答案（如果存在）
          const answerFile = questionFile.replace('Q', 'A');
          const answerPath = path.join(chineseAnswersPath, answerFile);
          
          if (fs.existsSync(answerPath)) {
            const answerContent = fs.readFileSync(answerPath, 'utf8').trim();
            const escapedAnswerContent = escapeSqlString(answerContent);
            
            // 生成答案插入SQL
            sqlStream.write(`-- 插入中文问题 ${questionNumber} 的答案\n`);
            sqlStream.write(`INSERT INTO answers (question_id, content, latex_content)\n`);
            sqlStream.write(`VALUES (\n`);
            sqlStream.write(`  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = '${topic}')\n`);
            sqlStream.write(`   AND question_number = ${questionNumber} AND language = 'Chinese'),\n`);
            sqlStream.write(`  '${escapedAnswerContent}',\n`);
            sqlStream.write(`  '${escapedAnswerContent}'\n`);
            sqlStream.write(`)\n`);
            sqlStream.write(`ON CONFLICT (question_id) DO NOTHING;\n\n`);
          } else {
            console.warn(`Answer file ${answerFile} not found. Skipping...`);
          }
        }
      } else {
        console.warn(`Chinese questions or answers folder not found for topic ${topic}`);
      }
    }
    
    // 关闭文件
    sqlStream.end();
    console.log(`SQL generation completed successfully! Output saved to: ${outputFile}`);
  } catch (error) {
    console.error('Error generating SQL:', error);
  }
}

// 执行生成SQL
generateSql(); 