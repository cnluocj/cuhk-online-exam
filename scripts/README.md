# CUHK Online Exam Database Scripts

这个目录包含用于设置数据库结构和上传题库问题到CUHK在线考试平台的脚本。

## 数据库结构

数据库由以下表组成：

1. **Topics（主题）**：包含主要数学主题
   - id (PK)
   - name (例如："QuadraticEquationsInOneUnknown")
   - display_name (例如："Quadratic Equations In One Unknown")
   - chapter (例如："Compulsory Part Ch.1-4")
   - created_at

2. **Questions（问题）**：包含所有数学问题
   - id (PK)
   - topic_id (FK 关联到 Topics)
   - question_number
   - language ("English" 或 "Chinese")
   - content (问题文本)
   - difficulty (可选的难度评级)
   - latex_content (原始LaTeX内容)
   - created_at

3. **Answers（答案）**：包含问题的答案
   - id (PK)
   - question_id (FK 关联到 Questions)
   - content (答案文本)
   - latex_content (原始LaTeX内容)
   - created_at

## 设置说明

### 选项1：使用Supabase SQL编辑器（推荐）

1. 登录到Supabase仪表板：http://43.153.40.240:8000
2. 导航到SQL编辑器
3. 复制`setup-database.sql`的内容
4. 粘贴到SQL编辑器并运行脚本
5. 然后可以选择以下两种方式之一：
   - 运行`sample-insert.sql`导入少量示例问题
   - 生成并运行完整的SQL导入（见下文）

### 选项2：使用生成SQL脚本

1. 安装Node.js和npm
2. 安装依赖：
   ```
   npm install
   ```
3. 运行生成SQL脚本：
   ```
   node generate-sql.js
   ```
4. 这将生成一个`all-questions.sql`文件
5. 将此文件的内容复制到Supabase SQL编辑器中运行

### 选项3：直接使用Node.js脚本

1. 安装Node.js和npm
2. 安装依赖：
   ```
   npm install
   ```
3. 运行设置脚本：
   ```
   npm run setup-db
   ```
4. 运行上传脚本：
   ```
   npm run upload-questions
   ```

## 常见问题及解决方案

### 行级安全策略(RLS)问题

如果您遇到类似以下错误：
```
new row violates row-level security policy for table "topics"
```

这意味着您的匿名用户没有插入数据的权限。解决方法：

1. 确保您的`setup-database.sql`包含插入权限策略：
   ```sql
   -- 添加匿名用户的插入权限
   CREATE POLICY topics_anon_insert ON topics FOR INSERT WITH CHECK (true);
   CREATE POLICY questions_anon_insert ON questions FOR INSERT WITH CHECK (true);
   CREATE POLICY answers_anon_insert ON answers FOR INSERT WITH CHECK (true);
   ```

2. 或者，使用Supabase界面：
   - 转到Authentication → Policies
   - 为每个表添加INSERT权限

## 脚本说明

- `setup-database.sql` - 创建数据库表结构的SQL脚本
- `setup-database.js` - 使用JavaScript创建数据库表结构
- `upload-questions.js` - 从题库中读取并上传问题的Node.js脚本
- `sample-insert.sql` - 包含一些示例问题的SQL脚本，可以用于测试
- `generate-sql.js` - 从题库生成完整的SQL插入语句，保存为文件

## 注意事项

- `upload-questions.js`脚本从题库中读取LaTeX文件并将其上传到数据库。
- 问题以两种语言（英文和中文）存储，相同的问题编号对应相同的数学问题。
- LaTeX格式保存在`latex_content`字段中，以便在前端使用MathJax或KaTeX进行渲染。
- 成功上传数据后，可以通过SQL查询来验证数据是否正确导入：
  ```sql
  SELECT COUNT(*) FROM topics;
  SELECT COUNT(*) FROM questions;
  SELECT COUNT(*) FROM answers;
  ```

## 路径问题

如果遇到找不到题库路径的问题，请检查：

1. 确保题库文件夹结构正确
2. 在`generate-sql.js`或`upload-questions.js`中，根据您的实际路径修改`possiblePaths`数组
3. 路径结构应该是：`/path/to/题库/Compulsory Part Ch.1-4/CompulsoryPart/[English|Chinese]/[Topic]/[Questions|Answers]` 