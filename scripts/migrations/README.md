# 数据库迁移 SQL 文件

简单的 SQL 迁移文件管理系统。

## 使用方法

### 新环境搭建
1. 先执行 `scripts/setup-database.sql` 创建基础表结构
2. 按顺序执行 migrations 目录下的所有 SQL 文件

### 现有环境升级
只执行缺失的迁移文件

### 添加新迁移
1. 创建新文件：`002_description.sql`
2. 按照现有格式编写 SQL
3. 在 Supabase SQL 编辑器中执行

## 迁移列表

| 文件 | 描述 | 状态 |
|------|------|------|
| `001_add_scoring_criteria.sql` | 添加评分标准字段 | ✅ 已执行 |

## 文件格式

```sql
-- Migration XXX: 描述
-- 创建时间: YYYY-MM-DD
-- 描述: 详细说明

-- SQL 语句
ALTER TABLE ...;

-- 验证语句
SELECT ...;
```
