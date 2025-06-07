-- Migration 001: 添加评分标准字段
-- 创建时间: 2024-12-19
-- 描述: 为 questions 表添加 scoring_criteria 字段

-- 添加评分标准字段
ALTER TABLE questions ADD COLUMN IF NOT EXISTS scoring_criteria TEXT;

-- 验证字段是否添加成功
SELECT column_name, data_type 
FROM information_schema.columns 
WHERE table_name = 'questions' AND column_name = 'scoring_criteria';
