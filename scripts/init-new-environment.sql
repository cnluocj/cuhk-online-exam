-- 新环境完整初始化脚本
-- 这个脚本包含了所有必要的数据库结构和迁移系统
-- 适用于全新的 Supabase 项目

-- ============================================
-- 1. 创建基础表结构
-- ============================================

-- 创建 topics 表
CREATE TABLE IF NOT EXISTS topics (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL UNIQUE,
  display_name TEXT NOT NULL,
  chapter TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- 创建 questions 表（包含评分标准字段）
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

-- 创建 answers 表
CREATE TABLE IF NOT EXISTS answers (
  id SERIAL PRIMARY KEY,
  question_id INTEGER REFERENCES questions(id),
  content TEXT NOT NULL,
  latex_content TEXT NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  UNIQUE(question_id)
);

-- ============================================
-- 2. 创建迁移系统表
-- ============================================

-- 创建 migrations 表
CREATE TABLE IF NOT EXISTS migrations (
  id TEXT PRIMARY KEY,
  description TEXT NOT NULL,
  executed_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- ============================================
-- 3. 创建索引
-- ============================================

CREATE INDEX IF NOT EXISTS questions_topic_id_idx ON questions(topic_id);
CREATE INDEX IF NOT EXISTS questions_language_idx ON questions(language);
CREATE INDEX IF NOT EXISTS answers_question_id_idx ON answers(question_id);

-- ============================================
-- 4. 启用行级安全 (RLS)
-- ============================================

ALTER TABLE topics ENABLE ROW LEVEL SECURITY;
ALTER TABLE questions ENABLE ROW LEVEL SECURITY;
ALTER TABLE answers ENABLE ROW LEVEL SECURITY;
ALTER TABLE migrations ENABLE ROW LEVEL SECURITY;

-- ============================================
-- 5. 创建访问策略
-- ============================================

-- Topics 表策略
CREATE POLICY topics_anon_read ON topics FOR SELECT USING (true);
CREATE POLICY topics_anon_insert ON topics FOR INSERT WITH CHECK (true);
CREATE POLICY topics_anon_update ON topics FOR UPDATE USING (true);

-- Questions 表策略
CREATE POLICY questions_anon_read ON questions FOR SELECT USING (true);
CREATE POLICY questions_anon_insert ON questions FOR INSERT WITH CHECK (true);
CREATE POLICY questions_anon_update ON questions FOR UPDATE USING (true);

-- Answers 表策略
CREATE POLICY answers_anon_read ON answers FOR SELECT USING (true);
CREATE POLICY answers_anon_insert ON answers FOR INSERT WITH CHECK (true);
CREATE POLICY answers_anon_update ON answers FOR UPDATE USING (true);

-- Migrations 表策略
CREATE POLICY migrations_anon_read ON migrations FOR SELECT USING (true);
CREATE POLICY migrations_anon_insert ON migrations FOR INSERT WITH CHECK (true);

-- ============================================
-- 6. 插入示例数据（可选）
-- ============================================

-- 插入一个示例主题
INSERT INTO topics (name, display_name, chapter) 
VALUES ('QuadraticEquationsInOneUnknown', 'Quadratic Equations In One Unknown', 'Compulsory Part Ch.1-4')
ON CONFLICT (name) DO NOTHING;

-- ============================================
-- 7. 记录初始迁移
-- ============================================

-- 记录评分标准字段已添加
INSERT INTO migrations (id, description)
VALUES ('001_add_scoring_criteria', 'Add scoring_criteria field to questions table')
ON CONFLICT (id) DO NOTHING;

-- 验证安装
SELECT 'Database initialization completed successfully!' as status;
SELECT 'Tables created: ' || count(*) as table_count 
FROM information_schema.tables 
WHERE table_schema = 'public' AND table_name IN ('topics', 'questions', 'answers', 'migrations');
