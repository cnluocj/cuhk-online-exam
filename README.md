# CUHK 在线考试平台

一个基于 Next.js 15 和 Supabase 的现代化在线数学考试平台，支持双语题库、OCR 图像识别、LaTeX 公式渲染等功能。

## 🚀 主要功能

- **📚 双语题库系统**: 支持中英文数学题目，包含完整的题目分类和章节管理
- **🔍 OCR 图像识别**: 集成 Dify API，支持数学公式图像识别和文本提取
- **📐 LaTeX 公式渲染**: 使用 MathJax 实现完美的数学公式显示
- **✏️ Markdown 编辑器**: 集成 ByteMD 编辑器，支持数学公式编辑
- **🖼️ 图像处理**: 使用 Sharp 进行图像压缩、灰度转换和优化
- **🐳 Docker 部署**: 完整的容器化部署方案
- **📱 响应式设计**: 使用 Tailwind CSS 构建的现代化界面

## 🛠️ 技术栈

- **前端**: Next.js 15, React 19, TypeScript, Tailwind CSS
- **后端**: Next.js API Routes, Supabase
- **数据库**: PostgreSQL (通过 Supabase)
- **图像处理**: Sharp, Dify OCR API
- **数学渲染**: MathJax, KaTeX
- **编辑器**: ByteMD
- **部署**: Docker, Docker Compose

## 📋 系统要求

- [Node.js](https://nodejs.org/) 20.x 或更高版本
- [Docker](https://docs.docker.com/get-docker/) (用于容器化部署)
- [Docker Compose](https://docs.docker.com/compose/install/)
- [Supabase](https://supabase.com/) 项目 (用于数据库)

## 🗂️ 项目结构

```
cuhk-online-exam/
├── src/
│   ├── app/                    # Next.js App Router 页面
│   │   ├── api/               # API 路由
│   │   │   ├── topics/        # 题目主题 API
│   │   │   ├── question/      # 题目查询 API
│   │   │   ├── ocr/           # OCR 图像识别 API
│   │   │   └── image/         # 图像处理 API
│   │   ├── question-bank/     # 题库页面
│   │   ├── exams/            # 考试页面
│   │   └── login/            # 登录页面
│   ├── components/           # React 组件
│   ├── utils/               # 工具函数
│   └── contexts/            # React Context
├── scripts/                 # 数据库脚本
│   ├── setup-database.sql   # 数据库表结构
│   ├── upload-questions.js  # 题目上传脚本
│   └── README.md           # 脚本使用说明
├── public/                 # 静态资源
├── Dockerfile             # Docker 构建文件
├── docker-compose.yml     # Docker Compose 配置
└── .env.template         # 环境变量模板
```

## 🚀 快速开始

### 1. 克隆项目

```bash
git clone <repository-url>
cd cuhk-online-exam
```

### 2. 环境配置

复制环境变量模板并配置：

```bash
cp .env.template .env
```

编辑 `.env` 文件，填入以下配置：

```bash
# 应用端口
APP_PORT=3000

# Supabase 配置
NEXT_PUBLIC_SUPABASE_URL=<你的_SUPABASE_项目_URL>
NEXT_PUBLIC_SUPABASE_ANON_KEY=<你的_SUPABASE_匿名_KEY>

# OCR API 配置 (可选)
OCR_API_ENDPOINT=<你的_DIFY_API_端点>
OCR_API_KEY=<你的_DIFY_API_密钥>
```

### 3. 数据库设置

#### 3.1 创建 Supabase 项目

1. 访问 [Supabase](https://supabase.com/) 并创建新项目
2. 获取项目 URL 和 API 密钥
3. 在项目设置中找到数据库连接信息

#### 3.2 初始化数据库表结构

在 Supabase SQL 编辑器中运行：

```sql
-- 运行 scripts/setup-database.sql 中的内容
```

或者使用 Node.js 脚本：

```bash
cd scripts
npm install
node setup-database.js
```

#### 3.3 导入题库数据 (可选)

如果有题库数据，可以使用导入脚本：

```bash
cd scripts
node upload-questions.js
```

### 4. 本地开发

安装依赖并启动开发服务器：

```bash
npm install
npm run dev
```

访问 [http://localhost:3000](http://localhost:3000) 查看应用。

### 5. Docker 部署

#### 5.1 使用 Docker Compose (推荐)

```bash
# 构建并启动容器
docker compose up --build -d

# 查看日志
docker compose logs -f

# 停止容器
docker compose down
```

#### 5.2 手动 Docker 构建

```bash
# 构建镜像
docker build -t cuhk-online-exam .

# 运行容器
docker run -p 3000:3000 --env-file .env cuhk-online-exam
```

## 📊 数据库结构

系统使用以下数据库表：

### Topics (主题表)
- `id`: 主键
- `name`: 主题名称 (如 "QuadraticEquationsInOneUnknown")
- `display_name`: 显示名称 (如 "一元二次方程")
- `chapter`: 章节信息
- `created_at`: 创建时间

### Questions (题目表)
- `id`: 主键
- `topic_id`: 关联主题 ID
- `question_number`: 题目编号
- `language`: 语言 ("English" 或 "Chinese")
- `content`: 题目内容
- `latex_content`: LaTeX 原始内容
- `difficulty`: 难度等级 (可选)
- `created_at`: 创建时间

### Answers (答案表)
- `id`: 主键
- `question_id`: 关联题目 ID
- `content`: 答案内容
- `latex_content`: LaTeX 原始内容
- `created_at`: 创建时间

## 🔌 API 接口

### 题目相关 API

#### 获取所有主题
```
GET /api/topics
```
返回所有题目主题及其题目数量。

#### 获取特定题目
```
GET /api/question/[topicId]/[questionNumber]
```
获取指定主题和题号的题目，包括中英文版本和答案。

### OCR 相关 API

#### 图像 OCR 识别
```
POST /api/ocr/run-dify
```
上传图像进行 OCR 识别，返回识别结果。

#### 图像处理
```
POST /api/image/grayscale
```
将图像转换为灰度并进行压缩优化。

## 🎯 使用指南

### 题库管理

1. **浏览题库**: 访问 `/question-bank` 查看所有可用主题
2. **练习题目**: 点击"开始练习"进入题目练习模式
3. **查看答案**: 在题目页面可以查看详细答案解析

### OCR 功能

1. **图像上传**: 在相关页面上传包含数学公式的图像
2. **识别处理**: 系统自动进行 OCR 识别和文本提取
3. **结果展示**: 识别结果以 LaTeX 格式显示

### 数学公式

- 支持 LaTeX 语法的数学公式
- 使用 MathJax 进行实时渲染
- 支持行内公式 `$...$` 和块级公式 `$$...$$`

## 🛠️ 开发指南

### 添加新功能

1. **API 路由**: 在 `src/app/api/` 下创建新的路由文件
2. **页面组件**: 在 `src/app/` 下创建新的页面
3. **共享组件**: 在 `src/components/` 下创建可复用组件
4. **工具函数**: 在 `src/utils/` 下添加工具函数

### 代码规范

- 使用 TypeScript 进行类型检查
- 遵循 ESLint 配置的代码规范
- 使用 Prettier 进行代码格式化
- 组件使用函数式组件和 React Hooks

### 测试

```bash
# 运行 ESLint 检查
npm run lint

# 构建项目
npm run build

# 启动生产模式
npm start
```

## 🔧 故障排除

### 常见问题

#### 1. 数据库连接失败
- 检查 Supabase URL 和 API 密钥是否正确
- 确认网络连接正常
- 验证 Supabase 项目状态

#### 2. OCR 功能不可用
- 检查 Dify API 配置是否正确
- 确认 API 密钥有效
- 检查图像格式是否支持

#### 3. 数学公式不显示
- 确认 MathJax 脚本加载成功
- 检查 LaTeX 语法是否正确
- 清除浏览器缓存重试

#### 4. Docker 构建失败
- 检查 Docker 和 Docker Compose 版本
- 确认 `.env` 文件配置正确
- 查看构建日志排查具体错误

### 日志查看

```bash
# 查看应用日志
docker compose logs app

# 实时查看日志
docker compose logs -f app

# 查看特定时间的日志
docker compose logs --since="2024-01-01" app
```

## 📝 环境变量说明

| 变量名 | 必需 | 说明 | 示例值 |
|--------|------|------|--------|
| `APP_PORT` | 是 | 应用端口 | `3000` |
| `NEXT_PUBLIC_SUPABASE_URL` | 是 | Supabase 项目 URL | `https://xxx.supabase.co` |
| `NEXT_PUBLIC_SUPABASE_ANON_KEY` | 是 | Supabase 匿名密钥 | `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...` |
| `OCR_API_ENDPOINT` | 否 | Dify OCR API 端点 | `https://api.dify.ai/v1/workflows/run` |
| `OCR_API_KEY` | 否 | Dify API 密钥 | `app-xxx` |

## 🚀 部署建议

### 生产环境

1. **反向代理**: 使用 Nginx 或 Traefik 处理 HTTPS 和负载均衡
2. **监控**: 集成日志监控和性能监控
3. **备份**: 定期备份数据库数据
4. **安全**: 配置防火墙和安全组规则

### 性能优化

1. **图像优化**: 启用图像压缩和 CDN
2. **缓存策略**: 配置适当的缓存头
3. **数据库优化**: 添加必要的索引
4. **代码分割**: 利用 Next.js 的自动代码分割

---

**注意**: 请确保在生产环境中妥善保护敏感信息，如 API 密钥和数据库凭据。
