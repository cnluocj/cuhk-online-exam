-- 示例SQL插入脚本，可以直接在Supabase SQL编辑器中运行

-- 插入一个主题（如果不存在）
INSERT INTO topics (name, display_name, chapter)
VALUES ('QuadraticEquationsInOneUnknown', 'Quadratic Equations In One Unknown', 'Compulsory Part Ch.1-4')
ON CONFLICT (name) DO NOTHING
RETURNING id;

-- 插入英文题目1
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  1,
  'English',
  'Solve $(3x-1)(x+2)=2x+5$.',
  'Solve $(3x-1)(x+2)=2x+5$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING
RETURNING id;

-- 插入英文答案1
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions 
   WHERE topic_id = (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown')
   AND question_number = 1 
   AND language = 'English'),
  '\begin{flalign*}
    (3x-1)(x+2)&=2x+5\\
    3x^2+5x-2&=2x+5\\
    3x^2+3x-7&=0\\
    x&=\frac{-3\pm \sqrt{3^2-4(3)(-7)}}{2(3)}\\
    &=\frac{-3\pm \sqrt{93}}{6}
\end{flalign*}',
  '\begin{flalign*}
    (3x-1)(x+2)&=2x+5\\
    3x^2+5x-2&=2x+5\\
    3x^2+3x-7&=0\\
    x&=\frac{-3\pm \sqrt{3^2-4(3)(-7)}}{2(3)}\\
    &=\frac{-3\pm \sqrt{93}}{6}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文题目1
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  1,
  'Chinese',
  '解\ $(3x-1)(x+2)=2x+5$.',
  '解\ $(3x-1)(x+2)=2x+5$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING
RETURNING id;

-- 插入中文答案1
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions 
   WHERE topic_id = (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown')
   AND question_number = 1 
   AND language = 'Chinese'),
  '\begin{flalign*}
    (3x-1)(x+2)&=2x+5\\
    3x^2+5x-2&=2x+5\\
    3x^2+3x-7&=0\\
    x&=\frac{-3\pm \sqrt{3^2-4(3)(-7)}}{2(3)}\\
    &=\frac{-3\pm \sqrt{93}}{6}
\end{flalign*}',
  '\begin{flalign*}
    (3x-1)(x+2)&=2x+5\\
    3x^2+5x-2&=2x+5\\
    3x^2+3x-7&=0\\
    x&=\frac{-3\pm \sqrt{3^2-4(3)(-7)}}{2(3)}\\
    &=\frac{-3\pm \sqrt{93}}{6}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 再添加一个英文题目示例
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  2,
  'English',
  'Solve $x^2-6x+8=0$.',
  'Solve $x^2-6x+8=0$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING
RETURNING id;

-- 插入英文答案2
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions 
   WHERE topic_id = (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown')
   AND question_number = 2 
   AND language = 'English'),
  '\begin{flalign*}
    x^2-6x+8&=0\\
    (x-4)(x-2)&=0\\
    x&=4 \text{ or } x=2
\end{flalign*}',
  '\begin{flalign*}
    x^2-6x+8&=0\\
    (x-4)(x-2)&=0\\
    x&=4 \text{ or } x=2
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING; 