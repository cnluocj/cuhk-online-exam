-- 自动生成的SQL插入语句，用于导入CUHK考试题库

-- 插入主题: Equations Of Straight Lines
INSERT INTO topics (name, display_name, chapter)
VALUES ('EquationsOfStraightLines', 'Equations Of Straight Lines', 'Compulsory Part Ch.1-4')
ON CONFLICT (name) DO NOTHING;

-- 插入英文问题 1
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  1,
  'English',
  'It is given that the straight line $L$ passes through the points $A(2,3)$ and $B(7,8)$. Find the equation of $L$.',
  'It is given that the straight line $L$ passes through the points $A(2,3)$ and $B(7,8)$. Find the equation of $L$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 1 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 1 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-3}{x-2}&=\frac{8-3}{7-2}\\
    \frac{y-3}{x-2}&=1\\
    y-3&=x-2\\
    y&=x+1
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-3}{x-2}&=\frac{8-3}{7-2}\\
    \frac{y-3}{x-2}&=1\\
    y-3&=x-2\\
    y&=x+1
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 2
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  2,
  'English',
  'It is given that the straight line $L$ passes through the points $A(-3,4)$ and $B(2,-1)$. Find the equation of $L$.',
  'It is given that the straight line $L$ passes through the points $A(-3,4)$ and $B(2,-1)$. Find the equation of $L$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 2 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 2 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-4}{x-(-3)}&=\frac{-1-4}{2-(-3)}\\
    \frac{y-4}{x+3}&=-1\\
    y-4&=-x-3\\
    y&=-x+1
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-4}{x-(-3)}&=\frac{-1-4}{2-(-3)}\\
    \frac{y-4}{x+3}&=-1\\
    y-4&=-x-3\\
    y&=-x+1
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 3
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  3,
  'English',
  'It is given that the straight line $L$ passes through the points $A(1,-1)$ and $B(-2,3)$. Find the equation of $L$.',
  'It is given that the straight line $L$ passes through the points $A(1,-1)$ and $B(-2,3)$. Find the equation of $L$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 3 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 3 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-(-1)}{x-1}&=\frac{3-(-1)}{-2-1}\\
    \frac{y+1}{x-1}&=\frac{4}{-3}\\
    -3(y+1)&=4(x-1)\\
    -3y-3&=4x-4\\
    4x+3y-1&=0
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-(-1)}{x-1}&=\frac{3-(-1)}{-2-1}\\
    \frac{y+1}{x-1}&=\frac{4}{-3}\\
    -3(y+1)&=4(x-1)\\
    -3y-3&=4x-4\\
    4x+3y-1&=0
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 4
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  4,
  'English',
  'It is given that the straight line $L$ passes through the points $A(3,0)$ and $B(7,-4)$. Find the equation of $L$.',
  'It is given that the straight line $L$ passes through the points $A(3,0)$ and $B(7,-4)$. Find the equation of $L$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 4 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 4 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-0}{x-3}&=\frac{-4-0}{7-3}\\
    \frac{y}{x-3}&=-1\\
    y&=-x+3
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-0}{x-3}&=\frac{-4-0}{7-3}\\
    \frac{y}{x-3}&=-1\\
    y&=-x+3
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 5
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  5,
  'English',
  'It is given that the straight line $L$ passes through the points $A(-2,-3)$ and $B(2,5)$. Find the equation of $L$.',
  'It is given that the straight line $L$ passes through the points $A(-2,-3)$ and $B(2,5)$. Find the equation of $L$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 5 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 5 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-(-3)}{x-(-2)}&=\frac{5-(-3)}{2-(-2)}\\
    \frac{y+3}{x+2}&=2\\
    y+3&=2x+4\\
    y&=2x+1
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-(-3)}{x-(-2)}&=\frac{5-(-3)}{2-(-2)}\\
    \frac{y+3}{x+2}&=2\\
    y+3&=2x+4\\
    y&=2x+1
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 6
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  6,
  'English',
  'It is given that the straight line $L$ passes through the points $A(4,1)$ and $B(6,9)$. If $C(c,1)$ lies on $L$, find the value of $c$.',
  'It is given that the straight line $L$ passes through the points $A(4,1)$ and $B(6,9)$. If $C(c,1)$ lies on $L$, find the value of $c$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 6 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 6 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-1}{x-4}&=\frac{9-1}{6-4}\\
    \frac{y-1}{x-4}&=4\\
    y-1&=4x-16\\
    y&=4x-15
\end{flalign*}
Substituting $C(c,1)$ into $L$, we have
\begin{flalign*}
    1&=4c-15\\
    4c&=16\\
    c&=4
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-1}{x-4}&=\frac{9-1}{6-4}\\
    \frac{y-1}{x-4}&=4\\
    y-1&=4x-16\\
    y&=4x-15
\end{flalign*}
Substituting $C(c,1)$ into $L$, we have
\begin{flalign*}
    1&=4c-15\\
    4c&=16\\
    c&=4
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 7
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  7,
  'English',
  'It is given that the straight line $L$ passes through the points $A(-1,4)$ and $B(3,-2)$. If $C(c,1)$ lies on $L$, find the value of $c$.',
  'It is given that the straight line $L$ passes through the points $A(-1,4)$ and $B(3,-2)$. If $C(c,1)$ lies on $L$, find the value of $c$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 7 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 7 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-4}{x-(-1)}&=\frac{-2-4}{3-(-1)}\\
    \frac{y-4}{x+1}&=\frac{-6}{4}\\
    \frac{y-4}{x+1}&=\frac{-3}{2}\\
    2(y-4)&=-3(x+1)\\
    2y-8&=-3x-3\\
    3x+2y-5&=0
\end{flalign*}
Substituting $C(c,1)$ into $L$, we have
\begin{flalign*}
    3c+2(1)-5&=0\\
    3c-3&=0\\
    c&=1
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-4}{x-(-1)}&=\frac{-2-4}{3-(-1)}\\
    \frac{y-4}{x+1}&=\frac{-6}{4}\\
    \frac{y-4}{x+1}&=\frac{-3}{2}\\
    2(y-4)&=-3(x+1)\\
    2y-8&=-3x-3\\
    3x+2y-5&=0
\end{flalign*}
Substituting $C(c,1)$ into $L$, we have
\begin{flalign*}
    3c+2(1)-5&=0\\
    3c-3&=0\\
    c&=1
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 8
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  8,
  'English',
  'It is given that the straight line $L$ passes through the points $A(2,-3)$ and $B(8,1)$. If $C(2,c)$ lies on $L$, find the value of $c$.',
  'It is given that the straight line $L$ passes through the points $A(2,-3)$ and $B(8,1)$. If $C(2,c)$ lies on $L$, find the value of $c$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 8 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 8 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-(-3)}{x-2}&=\frac{1-(-3)}{8-2}\\
    \frac{y+3}{x-2}&=\frac{4}{6}\\
    \frac{y+3}{x-2}&=\frac{2}{3}\\
    3(y+3)&=2(x-2)\\
    3y+9&=2x-4\\
    2x-3y-13&=0
\end{flalign*}
Substituting $C(2,c)$ into $L$, we have
\begin{flalign*}
    2(2)-3c-13&=0\\
    -3c-9&=0\\
    3c&=-9\\
    c&=-3
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-(-3)}{x-2}&=\frac{1-(-3)}{8-2}\\
    \frac{y+3}{x-2}&=\frac{4}{6}\\
    \frac{y+3}{x-2}&=\frac{2}{3}\\
    3(y+3)&=2(x-2)\\
    3y+9&=2x-4\\
    2x-3y-13&=0
\end{flalign*}
Substituting $C(2,c)$ into $L$, we have
\begin{flalign*}
    2(2)-3c-13&=0\\
    -3c-9&=0\\
    3c&=-9\\
    c&=-3
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 9
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  9,
  'English',
  'It is given that the straight line $L$ passes through the points $A(-3,-2)$ and $B(0,4)$. If $C(c,-4)$ lies on $L$, find the value of $c$.',
  'It is given that the straight line $L$ passes through the points $A(-3,-2)$ and $B(0,4)$. If $C(c,-4)$ lies on $L$, find the value of $c$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 9 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 9 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-(-2)}{x-(-3)}&=\frac{4-(-2)}{0-(-3)}\\
    \frac{y+2}{x+3}&=2\\
    y+2&=2x+6\\
    y&=2x+4
\end{flalign*}
Substituting $C(c,-4)$ into $L$, we have
\begin{flalign*}
    -4&=2c+4\\
    2c&=-8\\
    c&=-4
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-(-2)}{x-(-3)}&=\frac{4-(-2)}{0-(-3)}\\
    \frac{y+2}{x+3}&=2\\
    y+2&=2x+6\\
    y&=2x+4
\end{flalign*}
Substituting $C(c,-4)$ into $L$, we have
\begin{flalign*}
    -4&=2c+4\\
    2c&=-8\\
    c&=-4
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 10
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  10,
  'English',
  'It is given that the straight line $L$ passes through the points $A(6,8)$ and $B(2,3)$. If $C(8,c)$ lies on $L$, find the value of $c$.',
  'It is given that the straight line $L$ passes through the points $A(6,8)$ and $B(2,3)$. If $C(8,c)$ lies on $L$, find the value of $c$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 10 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 10 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-8}{x-6}&=\frac{3-8}{2-6}\\
    \frac{y-8}{x-6}&=\frac{-5}{-4}\\
    \frac{y-8}{x-6}&=\frac{5}{4}\\
    4(y-8)&=5(x-6)\\
    4y-32&=5x-30\\
    5x-4y+2&=0
\end{flalign*}
Substituting $C(8,c)$ into $L$, we have
\begin{flalign*}
    5(8)-4c+2&=0\\
    42-4c&=0\\
    4c&=42\\
    c&=\frac{21}{2}
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-8}{x-6}&=\frac{3-8}{2-6}\\
    \frac{y-8}{x-6}&=\frac{-5}{-4}\\
    \frac{y-8}{x-6}&=\frac{5}{4}\\
    4(y-8)&=5(x-6)\\
    4y-32&=5x-30\\
    5x-4y+2&=0
\end{flalign*}
Substituting $C(8,c)$ into $L$, we have
\begin{flalign*}
    5(8)-4c+2&=0\\
    42-4c&=0\\
    4c&=42\\
    c&=\frac{21}{2}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 11
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  11,
  'English',
  'Find the equation of the straight line passing through $A(-2,5)$ with slope $2$.',
  'Find the equation of the straight line passing through $A(-2,5)$ with slope $2$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 11 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 11 AND language = 'English'),
  'The equation of straight line is
\begin{flalign*}
    \frac{y-5}{x-(-2)}&=2\\
    \frac{y-5}{x+2}&=2\\
    y-5&=2x+4\\
    y&=2x+9
\end{flalign*}',
  'The equation of straight line is
\begin{flalign*}
    \frac{y-5}{x-(-2)}&=2\\
    \frac{y-5}{x+2}&=2\\
    y-5&=2x+4\\
    y&=2x+9
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 12
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  12,
  'English',
  'Find the equation of the straight line passing through $A(3,-7)$ with slope $-3$.',
  'Find the equation of the straight line passing through $A(3,-7)$ with slope $-3$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 12 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 12 AND language = 'English'),
  'The equation of straight line is
\begin{flalign*}
    \frac{y-(-7)}{x-3}&=-3\\
    \frac{y+7}{x-3}&=-3\\
    y+7&=-3x+9\\
    y&=-3x+2
\end{flalign*}',
  'The equation of straight line is
\begin{flalign*}
    \frac{y-(-7)}{x-3}&=-3\\
    \frac{y+7}{x-3}&=-3\\
    y+7&=-3x+9\\
    y&=-3x+2
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 13
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  13,
  'English',
  'Find the equation of the straight line passing through $A(0,4)$ with slope $\displaystyle \frac{1}{2}$.',
  'Find the equation of the straight line passing through $A(0,4)$ with slope $\displaystyle \frac{1}{2}$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 13 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 13 AND language = 'English'),
  'The equation of straight line is
\begin{flalign*}
    \frac{y-4}{x-0}&=\frac{1}{2}\\
    y-4&=\frac{1}{2}x\\
    y&=\frac{1}{2}x+4
\end{flalign*}',
  'The equation of straight line is
\begin{flalign*}
    \frac{y-4}{x-0}&=\frac{1}{2}\\
    y-4&=\frac{1}{2}x\\
    y&=\frac{1}{2}x+4
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 14
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  14,
  'English',
  'Find the equation of the straight line passing through $A(-5,-3)$ with slope $-1$.',
  'Find the equation of the straight line passing through $A(-5,-3)$ with slope $-1$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 14 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 14 AND language = 'English'),
  'The equation of straight line is
\begin{flalign*}
    \frac{y-(-3)}{x-(-5)}&=-1\\
    \frac{y+3}{x+5}&=-1\\
    y+3&=-x-5\\
    y&=-x-8
\end{flalign*}',
  'The equation of straight line is
\begin{flalign*}
    \frac{y-(-3)}{x-(-5)}&=-1\\
    \frac{y+3}{x+5}&=-1\\
    y+3&=-x-5\\
    y&=-x-8
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 15
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  15,
  'English',
  'Find the equation of the straight line passing through $A(6,0)$ with slope $\displaystyle \frac{2}{3}$.',
  'Find the equation of the straight line passing through $A(6,0)$ with slope $\displaystyle \frac{2}{3}$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 15 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 15 AND language = 'English'),
  'The equation of straight line is
\begin{flalign*}
    \frac{y-0}{x-6}&=\frac{2}{3}\\
    y&=\frac{2}{3}x-4
\end{flalign*}',
  'The equation of straight line is
\begin{flalign*}
    \frac{y-0}{x-6}&=\frac{2}{3}\\
    y&=\frac{2}{3}x-4
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 16
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  16,
  'English',
  'The equation of the straight line $L$ passing through $A(4,1)$ with slope $5$. If $B(10,b)$ lies on $L$, find the value of $b$.',
  'The equation of the straight line $L$ passing through $A(4,1)$ with slope $5$. If $B(10,b)$ lies on $L$, find the value of $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 16 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 16 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-1}{x-4}&=5\\
    y-1&=5x-20\\
    y&=5x-19
\end{flalign*}
Substituting $B(10,b)$ into $L$, we have
\begin{flalign*}
    b&=5(10)-19\\
    b&=31
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-1}{x-4}&=5\\
    y-1&=5x-20\\
    y&=5x-19
\end{flalign*}
Substituting $B(10,b)$ into $L$, we have
\begin{flalign*}
    b&=5(10)-19\\
    b&=31
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 17
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  17,
  'English',
  'The equation of the straight line $L$ passing through $A(-3,8)$ with slope $\displaystyle -\frac{7}{2}$. If $B(b,1)$ lies on $L$, find the value of $b$.',
  'The equation of the straight line $L$ passing through $A(-3,8)$ with slope $\displaystyle -\frac{7}{2}$. If $B(b,1)$ lies on $L$, find the value of $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 17 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 17 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-8}{x-(-3)}&=-\frac{7}{2}\\
    \frac{y-8}{x+3}&=-\frac{7}{2}\\
    2(y-8)&=-7(x+3)\\
    2y-16&=-7x-21\\
    7x+2y+5&=0
\end{flalign*}
Substituting $B(b,1)$ into $L$, we have
\begin{flalign*}
    7b+2(1)+5&=0\\
    7b+7&=0\\
    b&=-1
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-8}{x-(-3)}&=-\frac{7}{2}\\
    \frac{y-8}{x+3}&=-\frac{7}{2}\\
    2(y-8)&=-7(x+3)\\
    2y-16&=-7x-21\\
    7x+2y+5&=0
\end{flalign*}
Substituting $B(b,1)$ into $L$, we have
\begin{flalign*}
    7b+2(1)+5&=0\\
    7b+7&=0\\
    b&=-1
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 18
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  18,
  'English',
  'The equation of the straight line $L$ passing through $A(2,-6)$ with slope $4$. If $B(b,18)$ lies on $L$, find the value of $b$.',
  'The equation of the straight line $L$ passing through $A(2,-6)$ with slope $4$. If $B(b,18)$ lies on $L$, find the value of $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 18 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 18 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-(-6)}{x-2}&=4\\
    \frac{y+6}{x-2}&=4\\
    y+6&=4x-8\\
    y&=4x-14
\end{flalign*}
Substituting $B(b,18)$ into $L$, we have
\begin{flalign*}
    18&=4b-14\\
    4b&=32\\
    b&=8
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-(-6)}{x-2}&=4\\
    \frac{y+6}{x-2}&=4\\
    y+6&=4x-8\\
    y&=4x-14
\end{flalign*}
Substituting $B(b,18)$ into $L$, we have
\begin{flalign*}
    18&=4b-14\\
    4b&=32\\
    b&=8
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 19
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  19,
  'English',
  'The equation of the straight line $L$ passing through $A(-4,0)$ with slope $\displaystyle -\frac{3}{2}$. If $B(2,b)$ lies on $L$, find the value of $b$.',
  'The equation of the straight line $L$ passing through $A(-4,0)$ with slope $\displaystyle -\frac{3}{2}$. If $B(2,b)$ lies on $L$, find the value of $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 19 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 19 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-0}{x-(-4)}&=-\frac{3}{2}\\
    \frac{y}{x+4}&=-\frac{3}{2}\\
    y&=-\frac{3}{2}x-6
\end{flalign*}
Substituting $B(2,b)$ into $L$, we have
\begin{flalign*}
    b&=-\frac{3}{2}(2)-6\\
    b&=-9
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-0}{x-(-4)}&=-\frac{3}{2}\\
    \frac{y}{x+4}&=-\frac{3}{2}\\
    y&=-\frac{3}{2}x-6
\end{flalign*}
Substituting $B(2,b)$ into $L$, we have
\begin{flalign*}
    b&=-\frac{3}{2}(2)-6\\
    b&=-9
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 20
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  20,
  'English',
  'The equation of the straight line $L$ passing through $A(7,3)$ with slope $\displaystyle -\frac{2}{7}$. If $B(14,b)$ lies on $L$, find the value of $b$.',
  'The equation of the straight line $L$ passing through $A(7,3)$ with slope $\displaystyle -\frac{2}{7}$. If $B(14,b)$ lies on $L$, find the value of $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 20 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 20 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-3}{x-7}&=-\frac{2}{7}\\
    7(y-3)&=-2(x-7)\\
    7y-21&=-2x+14\\
    2x+7y-35&=0
\end{flalign*}
Substituting $B(14,b)$ into $L$, we have
\begin{flalign*}
    2(14)+7b-35&=0\\
    7b-7&=0\\
    b&=1
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    \frac{y-3}{x-7}&=-\frac{2}{7}\\
    7(y-3)&=-2(x-7)\\
    7y-21&=-2x+14\\
    2x+7y-35&=0
\end{flalign*}
Substituting $B(14,b)$ into $L$, we have
\begin{flalign*}
    2(14)+7b-35&=0\\
    7b-7&=0\\
    b&=1
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 21
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  21,
  'English',
  'It is given that the straight line $L$ with slope $\displaystyle -\frac{1}{2}$ cuts the $y$-axis at $A(0,-3)$. Find the equation of $L$.',
  'It is given that the straight line $L$ with slope $\displaystyle -\frac{1}{2}$ cuts the $y$-axis at $A(0,-3)$. Find the equation of $L$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 21 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 21 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    y&=-\frac{1}{2}x-3
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    y&=-\frac{1}{2}x-3
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 22
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  22,
  'English',
  'It is given that the straight line $L$ with slope $5$ cuts the $y$-axis at $A(0,2)$. Find the equation of $L$.',
  'It is given that the straight line $L$ with slope $5$ cuts the $y$-axis at $A(0,2)$. Find the equation of $L$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 22 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 22 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    y&=5x+2
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    y&=5x+2
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 23
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  23,
  'English',
  'It is given that the straight line $L$ with slope $\displaystyle -3$ cuts the $y$-axis at $A(0,7)$. Find the equation of $L$.',
  'It is given that the straight line $L$ with slope $\displaystyle -3$ cuts the $y$-axis at $A(0,7)$. Find the equation of $L$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 23 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 23 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    y&=-3x+7
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    y&=-3x+7
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 24
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  24,
  'English',
  'It is given that the straight line $L$ with slope $\displaystyle -\frac{1}{4}$ cuts the $y$-axis at $A(0,-6)$. Find the equation of $L$.',
  'It is given that the straight line $L$ with slope $\displaystyle -\frac{1}{4}$ cuts the $y$-axis at $A(0,-6)$. Find the equation of $L$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 24 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 24 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    y&=-\frac{1}{4}x-6
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    y&=-\frac{1}{4}x-6
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 25
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  25,
  'English',
  'It is given that the straight line $L$ with slope $\displaystyle -\frac{3}{2}$ cuts the $y$-axis at $A(0,2)$. Find the equation of $L$.',
  'It is given that the straight line $L$ with slope $\displaystyle -\frac{3}{2}$ cuts the $y$-axis at $A(0,2)$. Find the equation of $L$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 25 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 25 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    y&=-\frac{3}{2}x+2
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    y&=-\frac{3}{2}x+2
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 26
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  26,
  'English',
  'It is given that the straight line $L$ with slope $\displaystyle \frac{3}{5}$ cuts the $y$-axis and the $x$-axis at $A(0,-8)$ and $B(b,0)$ respectively. Find the value of $b$.',
  'It is given that the straight line $L$ with slope $\displaystyle \frac{3}{5}$ cuts the $y$-axis and the $x$-axis at $A(0,-8)$ and $B(b,0)$ respectively. Find the value of $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 26 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 26 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    y&=\frac{3}{5}x-8
\end{flalign*}
Substituting $B(b,0)$ into $L$, we have
\begin{flalign*}
    0&=\frac{3}{5}b-8\\
    \frac{3}{5}b&=8\\
    b&=\frac{40}{3}
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    y&=\frac{3}{5}x-8
\end{flalign*}
Substituting $B(b,0)$ into $L$, we have
\begin{flalign*}
    0&=\frac{3}{5}b-8\\
    \frac{3}{5}b&=8\\
    b&=\frac{40}{3}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 27
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  27,
  'English',
  'It is given that the straight line $L$ with slope $\displaystyle -\frac{5}{6}$ cuts the $y$-axis and the $x$-axis at $A(0,3)$ and $B(b,0)$ respectively. Find the value of $b$.',
  'It is given that the straight line $L$ with slope $\displaystyle -\frac{5}{6}$ cuts the $y$-axis and the $x$-axis at $A(0,3)$ and $B(b,0)$ respectively. Find the value of $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 27 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 27 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    y&=-\frac{5}{6}x+3
\end{flalign*}
Substituting $B(b,0)$ into $L$, we have
\begin{flalign*}
    0&=-\frac{5}{6}b+3\\
    \frac{5}{6}b&=3\\
    b&=\frac{18}{5}
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    y&=-\frac{5}{6}x+3
\end{flalign*}
Substituting $B(b,0)$ into $L$, we have
\begin{flalign*}
    0&=-\frac{5}{6}b+3\\
    \frac{5}{6}b&=3\\
    b&=\frac{18}{5}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 28
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  28,
  'English',
  'It is given that the straight line $L$ with slope $12$ cuts the $y$-axis and the $x$-axis at $A(0,-1)$ and $B(b,0)$ respectively. Find the value of $b$.',
  'It is given that the straight line $L$ with slope $12$ cuts the $y$-axis and the $x$-axis at $A(0,-1)$ and $B(b,0)$ respectively. Find the value of $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 28 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 28 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    y&=12x-1
\end{flalign*}
Substituting $B(b,0)$ into $L$, we have
\begin{flalign*}
    0&=12b-1\\
    b&=\frac{1}{12}
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    y&=12x-1
\end{flalign*}
Substituting $B(b,0)$ into $L$, we have
\begin{flalign*}
    0&=12b-1\\
    b&=\frac{1}{12}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 29
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  29,
  'English',
  'It is given that the straight line $L$ with slope $-1$ cuts the $y$-axis and the $x$-axis at $A(0,3)$ and $B(b,0)$ respectively. Find the value of $b$.',
  'It is given that the straight line $L$ with slope $-1$ cuts the $y$-axis and the $x$-axis at $A(0,3)$ and $B(b,0)$ respectively. Find the value of $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 29 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 29 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    y&=-x+3
\end{flalign*}
Substituting $B(b,0)$ into $L$, we have
\begin{flalign*}
    0&=-b+3\\
    b&=3
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    y&=-x+3
\end{flalign*}
Substituting $B(b,0)$ into $L$, we have
\begin{flalign*}
    0&=-b+3\\
    b&=3
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 30
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  30,
  'English',
  'It is given that the straight line $L$ with slope $2$ cuts the $y$-axis and the $x$-axis at $A(0,-5)$ and $B(b,0)$ respectively. Find the value of $b$.',
  'It is given that the straight line $L$ with slope $2$ cuts the $y$-axis and the $x$-axis at $A(0,-5)$ and $B(b,0)$ respectively. Find the value of $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 30 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 30 AND language = 'English'),
  'The equation of $L$ is
\begin{flalign*}
    y&=2x-5
\end{flalign*}
Substituting $B(b,0)$ into $L$, we have
\begin{flalign*}
    0&=2b-5\\
    2b&=5\\
    b&=\frac{5}{2}
\end{flalign*}',
  'The equation of $L$ is
\begin{flalign*}
    y&=2x-5
\end{flalign*}
Substituting $B(b,0)$ into $L$, we have
\begin{flalign*}
    0&=2b-5\\
    2b&=5\\
    b&=\frac{5}{2}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 31
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  31,
  'English',
  'In the figure, $CM$ is the median of $AB$ in $\triangle ABC$. Find the equation of $CM$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}  
  % Define Points
  \coordinate (A) at (-3/2,4/3);
  \coordinate (B) at (5/2,10/3);
  \coordinate (C) at (2/2,-8/3);
  \coordinate (M) at ($(A)!0.5!(B)$);
  
  % Draw triangle
  \draw[thick] (A) -- (B) -- (C) -- cycle;
  
  % Draw median CM
  \draw[red, thick] (C) -- (M);
  
  % Mark the points
  \filldraw (A) circle (2pt) node[above left] {$A(-3,4)$};
  \filldraw (B) circle (2pt) node[above right] {$B(5,10)$};
  \filldraw (C) circle (2pt) node[below right] {$C(2,-8)$};
  \filldraw (M) circle (2pt) node[above] {$M$};
\end{tikzpicture}}
\end{center}',
  'In the figure, $CM$ is the median of $AB$ in $\triangle ABC$. Find the equation of $CM$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}  
  % Define Points
  \coordinate (A) at (-3/2,4/3);
  \coordinate (B) at (5/2,10/3);
  \coordinate (C) at (2/2,-8/3);
  \coordinate (M) at ($(A)!0.5!(B)$);
  
  % Draw triangle
  \draw[thick] (A) -- (B) -- (C) -- cycle;
  
  % Draw median CM
  \draw[red, thick] (C) -- (M);
  
  % Mark the points
  \filldraw (A) circle (2pt) node[above left] {$A(-3,4)$};
  \filldraw (B) circle (2pt) node[above right] {$B(5,10)$};
  \filldraw (C) circle (2pt) node[below right] {$C(2,-8)$};
  \filldraw (M) circle (2pt) node[above] {$M$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 31 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 31 AND language = 'English'),
  'The coordinates of $\displaystyle M=\left(\frac{-3+5}{2},\frac{4+10}{2}\right)=(1,7)$.\\
The equation of $CM$ is
\begin{flalign*}
    \frac{y-(-8)}{x-2}&=\frac{7-(-8)}{1-2}\\
    \frac{y+8}{x-2}&=-15\\
    y+8&=-15x+30\\
    y&=-15x+22
\end{flalign*}',
  'The coordinates of $\displaystyle M=\left(\frac{-3+5}{2},\frac{4+10}{2}\right)=(1,7)$.\\
The equation of $CM$ is
\begin{flalign*}
    \frac{y-(-8)}{x-2}&=\frac{7-(-8)}{1-2}\\
    \frac{y+8}{x-2}&=-15\\
    y+8&=-15x+30\\
    y&=-15x+22
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 32
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  32,
  'English',
  'In the figure, $CM$ is the median of $AB$ in $\triangle ABC$. Find the equation of $CM$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}  
  % Define Points
  \coordinate (A) at (8/3,-3/2);
  \coordinate (B) at (2/3,7/2);
  \coordinate (C) at (-1/3,2/2);
  \coordinate (M) at ($(A)!0.5!(B)$);
  
  % Draw triangle
  \draw[thick] (A) -- (B) -- (C) -- cycle;
  
  % Draw median CM
  \draw[red, thick] (C) -- (M);
  
  % Mark the points
  \filldraw (A) circle (2pt) node[below right] {$A(8,-3)$};
  \filldraw (B) circle (2pt) node[above left] {$B(2,7)$};
  \filldraw (C) circle (2pt) node[left] {$C(-1,2)$};
  \filldraw (M) circle (2pt) node[right] {$M$};
\end{tikzpicture}}
\end{center}',
  'In the figure, $CM$ is the median of $AB$ in $\triangle ABC$. Find the equation of $CM$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}  
  % Define Points
  \coordinate (A) at (8/3,-3/2);
  \coordinate (B) at (2/3,7/2);
  \coordinate (C) at (-1/3,2/2);
  \coordinate (M) at ($(A)!0.5!(B)$);
  
  % Draw triangle
  \draw[thick] (A) -- (B) -- (C) -- cycle;
  
  % Draw median CM
  \draw[red, thick] (C) -- (M);
  
  % Mark the points
  \filldraw (A) circle (2pt) node[below right] {$A(8,-3)$};
  \filldraw (B) circle (2pt) node[above left] {$B(2,7)$};
  \filldraw (C) circle (2pt) node[left] {$C(-1,2)$};
  \filldraw (M) circle (2pt) node[right] {$M$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 32 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 32 AND language = 'English'),
  'The coordinates of $\displaystyle M=\left(\frac{2+8}{2},\frac{7+(-3)}{2}\right)=(5,2)$.\\
The equation of $CM$ is
\begin{flalign*}
    \frac{y-2}{x-(-1)}&=\frac{2-2}{5-(-1)}\\
    \frac{y-2}{x+1}&=0\\
    y-2&=0\\
    y&=2
\end{flalign*}',
  'The coordinates of $\displaystyle M=\left(\frac{2+8}{2},\frac{7+(-3)}{2}\right)=(5,2)$.\\
The equation of $CM$ is
\begin{flalign*}
    \frac{y-2}{x-(-1)}&=\frac{2-2}{5-(-1)}\\
    \frac{y-2}{x+1}&=0\\
    y-2&=0\\
    y&=2
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 33
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  33,
  'English',
  'In the figure, $CM$ is the median of $AB$ in $\triangle ABC$. Find the equation of $CM$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}  
  % Define Points
  \coordinate (A) at (0,0);
  \coordinate (B) at (10/3,0);
  \coordinate (C) at (5/3,5/2);
  \coordinate (M) at ($(A)!0.5!(B)$);
  
  % Draw triangle
  \draw[thick] (A) -- (B) -- (C) -- cycle;
  
  % Draw median CM
  \draw[red, thick] (C) -- (M);
  
  % Mark the points
  \filldraw (A) circle (2pt) node[below left] {$A(0,0)$};
  \filldraw (B) circle (2pt) node[below right] {$B(10,0)$};
  \filldraw (C) circle (2pt) node[above] {$C(5,5)$};
  \filldraw (M) circle (2pt) node[below] {$M$};
\end{tikzpicture}}
\end{center}',
  'In the figure, $CM$ is the median of $AB$ in $\triangle ABC$. Find the equation of $CM$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}  
  % Define Points
  \coordinate (A) at (0,0);
  \coordinate (B) at (10/3,0);
  \coordinate (C) at (5/3,5/2);
  \coordinate (M) at ($(A)!0.5!(B)$);
  
  % Draw triangle
  \draw[thick] (A) -- (B) -- (C) -- cycle;
  
  % Draw median CM
  \draw[red, thick] (C) -- (M);
  
  % Mark the points
  \filldraw (A) circle (2pt) node[below left] {$A(0,0)$};
  \filldraw (B) circle (2pt) node[below right] {$B(10,0)$};
  \filldraw (C) circle (2pt) node[above] {$C(5,5)$};
  \filldraw (M) circle (2pt) node[below] {$M$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 33 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 33 AND language = 'English'),
  'The coordinates of $\displaystyle M=\left(\frac{0+10}{2},\frac{0+0}{2}\right)=(5,0)$.\\
The equation of $CM$ is
\begin{flalign*}
    x&=5
\end{flalign*}',
  'The coordinates of $\displaystyle M=\left(\frac{0+10}{2},\frac{0+0}{2}\right)=(5,0)$.\\
The equation of $CM$ is
\begin{flalign*}
    x&=5
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 34
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  34,
  'English',
  'In the figure, $CM$ is the median of $AB$ in $\triangle ABC$. Find the equation of $CM$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}  
  % Define Points
  \coordinate (A) at (4/3,8/3);
  \coordinate (B) at (-6/3,3/3);
  \coordinate (C) at (1/3,-2/3);
  \coordinate (M) at ($(A)!0.5!(B)$);
  
  % Draw triangle
  \draw[thick] (A) -- (B) -- (C) -- cycle;
  
  % Draw median CM
  \draw[red, thick] (C) -- (M);
  
  % Mark the points
  \filldraw (A) circle (2pt) node[above right] {$A(4,8)$};
  \filldraw (B) circle (2pt) node[above left] {$B(-6,3)$};
  \filldraw (C) circle (2pt) node[below right] {$C(1,-2)$};
  \filldraw (M) circle (2pt) node[above left] {$M$};
\end{tikzpicture}}
\end{center}',
  'In the figure, $CM$ is the median of $AB$ in $\triangle ABC$. Find the equation of $CM$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}  
  % Define Points
  \coordinate (A) at (4/3,8/3);
  \coordinate (B) at (-6/3,3/3);
  \coordinate (C) at (1/3,-2/3);
  \coordinate (M) at ($(A)!0.5!(B)$);
  
  % Draw triangle
  \draw[thick] (A) -- (B) -- (C) -- cycle;
  
  % Draw median CM
  \draw[red, thick] (C) -- (M);
  
  % Mark the points
  \filldraw (A) circle (2pt) node[above right] {$A(4,8)$};
  \filldraw (B) circle (2pt) node[above left] {$B(-6,3)$};
  \filldraw (C) circle (2pt) node[below right] {$C(1,-2)$};
  \filldraw (M) circle (2pt) node[above left] {$M$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 34 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 34 AND language = 'English'),
  'The coordinates of $\displaystyle M=\left(\frac{-6+4}{2},\frac{3+8}{2}\right)=\left(-1,\frac{11}{2}\right)$.\\
The equation of $CM$ is
\begin{flalign*}
    \frac{y-(-2)}{x-1}&=\frac{\frac{11}{2}-(-2)}{-1-1}\\
    \frac{y+2}{x-1}&=-\frac{15}{4}\\
    4(y+2)&=-15(x-1)\\
    4y+8&=-15x+15\\
    15x+4y-7&=0
\end{flalign*}',
  'The coordinates of $\displaystyle M=\left(\frac{-6+4}{2},\frac{3+8}{2}\right)=\left(-1,\frac{11}{2}\right)$.\\
The equation of $CM$ is
\begin{flalign*}
    \frac{y-(-2)}{x-1}&=\frac{\frac{11}{2}-(-2)}{-1-1}\\
    \frac{y+2}{x-1}&=-\frac{15}{4}\\
    4(y+2)&=-15(x-1)\\
    4y+8&=-15x+15\\
    15x+4y-7&=0
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 35
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  35,
  'English',
  'In the figure, $CM$ is the median of $AB$ in $\triangle ABC$. Find the equation of $CM$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}  
  % Define Points
  \coordinate (A) at (3/3,7/2);
  \coordinate (B) at (9/3,-1/2);
  \coordinate (C) at (0,4/2);
  \coordinate (M) at ($(A)!0.5!(B)$);
  
  % Draw triangle
  \draw[thick] (A) -- (B) -- (C) -- cycle;
  
  % Draw median CM
  \draw[red, thick] (C) -- (M);
  
  % Mark the points
  \filldraw (A) circle (2pt) node[above] {$A(3,7)$};
  \filldraw (B) circle (2pt) node[below right] {$B(9,-1)$};
  \filldraw (C) circle (2pt) node[left] {$C(0,4)$};
  \filldraw (M) circle (2pt) node[right] {$M$};
\end{tikzpicture}}
\end{center}',
  'In the figure, $CM$ is the median of $AB$ in $\triangle ABC$. Find the equation of $CM$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}  
  % Define Points
  \coordinate (A) at (3/3,7/2);
  \coordinate (B) at (9/3,-1/2);
  \coordinate (C) at (0,4/2);
  \coordinate (M) at ($(A)!0.5!(B)$);
  
  % Draw triangle
  \draw[thick] (A) -- (B) -- (C) -- cycle;
  
  % Draw median CM
  \draw[red, thick] (C) -- (M);
  
  % Mark the points
  \filldraw (A) circle (2pt) node[above] {$A(3,7)$};
  \filldraw (B) circle (2pt) node[below right] {$B(9,-1)$};
  \filldraw (C) circle (2pt) node[left] {$C(0,4)$};
  \filldraw (M) circle (2pt) node[right] {$M$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 35 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 35 AND language = 'English'),
  'The coordinates of $\displaystyle M=\left(\frac{3+9}{2},\frac{7+(-1)}{2}\right)=(6,3)$.\\
The equation of $CM$ is
\begin{flalign*}
    \frac{y-4}{x-0}&=\frac{3-4}{6-0}\\
    \frac{y-4}{x}&=-\frac{1}{6}\\
    y-4&=-\frac{1}{6}x\\
    y&=-\frac{1}{6}x+4
\end{flalign*}',
  'The coordinates of $\displaystyle M=\left(\frac{3+9}{2},\frac{7+(-1)}{2}\right)=(6,3)$.\\
The equation of $CM$ is
\begin{flalign*}
    \frac{y-4}{x-0}&=\frac{3-4}{6-0}\\
    \frac{y-4}{x}&=-\frac{1}{6}\\
    y-4&=-\frac{1}{6}x\\
    y&=-\frac{1}{6}x+4
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 36
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  36,
  'English',
  'In the figure, the straight line $\displaystyle L:y=-\frac{3}{2}x+k$ cuts the $x$-axis and the $y$-axis at $C(8,0)$ and $A$ respectively. $B$ is the mid-point of $AC$. Find the coordinates of $A$ and $B$. 
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}  
  % Axes
  \draw[->] (-1,0) -- (10/2,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,15/3) node[above] {$y$};
  
  % Define points
  \coordinate (A) at (0,12/3);
  \coordinate (C) at (8/2,0);
  \coordinate (B) at (4/2,6/3);
  
  % Draw the line L through A and C
  \draw[blue, thick] (A) -- (C) node[above right] {$L$};
  
  % Mark points
  \filldraw (A) circle (2pt) node[left] {$A$};
  \filldraw (C) circle (2pt) node[below] {$C(8,0)$};
  \filldraw (B) circle (2pt) node[above right] {$B$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the straight line $\displaystyle L:y=-\frac{3}{2}x+k$ cuts the $x$-axis and the $y$-axis at $C(8,0)$ and $A$ respectively. $B$ is the mid-point of $AC$. Find the coordinates of $A$ and $B$. 
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}  
  % Axes
  \draw[->] (-1,0) -- (10/2,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,15/3) node[above] {$y$};
  
  % Define points
  \coordinate (A) at (0,12/3);
  \coordinate (C) at (8/2,0);
  \coordinate (B) at (4/2,6/3);
  
  % Draw the line L through A and C
  \draw[blue, thick] (A) -- (C) node[above right] {$L$};
  
  % Mark points
  \filldraw (A) circle (2pt) node[left] {$A$};
  \filldraw (C) circle (2pt) node[below] {$C(8,0)$};
  \filldraw (B) circle (2pt) node[above right] {$B$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 36 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 36 AND language = 'English'),
  'Substituting $C(8,0)$ into $L$, we have
\begin{flalign*}
    0&=-\frac{3}{2}(8)+k\\
    0&=-12+k\\
    k&=12
\end{flalign*}
Therefore, we have $\displaystyle y=-\frac{3}{2}x+12$. \\
The coordinates of $A$ is $(0,12)$.\\
The coordinates of $B$ is $\displaystyle \left(\frac{0+8}{2},\frac{12+0}{2}\right)=(4,6)$.',
  'Substituting $C(8,0)$ into $L$, we have
\begin{flalign*}
    0&=-\frac{3}{2}(8)+k\\
    0&=-12+k\\
    k&=12
\end{flalign*}
Therefore, we have $\displaystyle y=-\frac{3}{2}x+12$. \\
The coordinates of $A$ is $(0,12)$.\\
The coordinates of $B$ is $\displaystyle \left(\frac{0+8}{2},\frac{12+0}{2}\right)=(4,6)$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 37
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  37,
  'English',
  'In the figure, the straight line $\displaystyle L:y=-\frac{2}{3}x+k$ cuts the $x$-axis and the $y$-axis at $C(15,0)$ and $A$ respectively. $B$ is the mid-point of $AC$. Find the coordinates of $A$ and $B$. 
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}  
  \draw[->] (-1,0) -- (17/3,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,12/2) node[above] {$y$};
  
  \coordinate (A) at (0,10/2);
  \coordinate (C) at (15/3,0);
  \coordinate (B) at (7.5/3,5/2);
  
  \draw[blue, thick] (A) -- (C) node[above right] {$L$};
  
  \filldraw (A) circle (2pt) node[left] {$A$};
  \filldraw (C) circle (2pt) node[below] {$C(15,0)$};
  \filldraw (B) circle (2pt) node[above right] {$B$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the straight line $\displaystyle L:y=-\frac{2}{3}x+k$ cuts the $x$-axis and the $y$-axis at $C(15,0)$ and $A$ respectively. $B$ is the mid-point of $AC$. Find the coordinates of $A$ and $B$. 
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}  
  \draw[->] (-1,0) -- (17/3,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,12/2) node[above] {$y$};
  
  \coordinate (A) at (0,10/2);
  \coordinate (C) at (15/3,0);
  \coordinate (B) at (7.5/3,5/2);
  
  \draw[blue, thick] (A) -- (C) node[above right] {$L$};
  
  \filldraw (A) circle (2pt) node[left] {$A$};
  \filldraw (C) circle (2pt) node[below] {$C(15,0)$};
  \filldraw (B) circle (2pt) node[above right] {$B$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 37 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 37 AND language = 'English'),
  'Substituting $C(15,0)$ into $L$, we have
\begin{flalign*}
    0&=-\frac{2}{3}(15)+k\\
    0&=-10+k\\
    k&=10
\end{flalign*}
Therefore, we have $\displaystyle y=-\frac{2}{3}x+10$. \\
The coordinates of $A$ is $(0,10)$.\\
The coordinates of $B$ is $\displaystyle \left(\frac{0+15}{2},\frac{10+0}{2}\right)=\left(\frac{15}{2},5\right)$.',
  'Substituting $C(15,0)$ into $L$, we have
\begin{flalign*}
    0&=-\frac{2}{3}(15)+k\\
    0&=-10+k\\
    k&=10
\end{flalign*}
Therefore, we have $\displaystyle y=-\frac{2}{3}x+10$. \\
The coordinates of $A$ is $(0,10)$.\\
The coordinates of $B$ is $\displaystyle \left(\frac{0+15}{2},\frac{10+0}{2}\right)=\left(\frac{15}{2},5\right)$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 38
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  38,
  'English',
  'In the figure, the straight line $\displaystyle L:y=-\frac{5}{4}x+k$ cuts the $x$-axis and the $y$-axis at $C(12,0)$ and $A$ respectively. $B$ is the mid-point of $AC$. Find the coordinates of $A$ and $B$. 
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}  
  \draw[->] (-1,0) -- (14/3,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,18/4) node[above] {$y$};
  
  \coordinate (A) at (0,15/4);
  \coordinate (C) at (12/3,0);
  \coordinate (B) at (6/3,7.5/4);
  
  \draw[blue, thick] (A) -- (C) node[above right] {$L$};
  
  \filldraw (A) circle (2pt) node[left] {$A$};
  \filldraw (C) circle (2pt) node[below] {$C(12,0)$};
  \filldraw (B) circle (2pt) node[above right] {$B$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the straight line $\displaystyle L:y=-\frac{5}{4}x+k$ cuts the $x$-axis and the $y$-axis at $C(12,0)$ and $A$ respectively. $B$ is the mid-point of $AC$. Find the coordinates of $A$ and $B$. 
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}  
  \draw[->] (-1,0) -- (14/3,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,18/4) node[above] {$y$};
  
  \coordinate (A) at (0,15/4);
  \coordinate (C) at (12/3,0);
  \coordinate (B) at (6/3,7.5/4);
  
  \draw[blue, thick] (A) -- (C) node[above right] {$L$};
  
  \filldraw (A) circle (2pt) node[left] {$A$};
  \filldraw (C) circle (2pt) node[below] {$C(12,0)$};
  \filldraw (B) circle (2pt) node[above right] {$B$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 38 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 38 AND language = 'English'),
  'Substituting $C(12,0)$ into $L$, we have
\begin{flalign*}
    0&=-\frac{5}{4}(12)+k\\
    0&=-15+k\\
    k&=15
\end{flalign*}
Therefore, we have $\displaystyle y=-\frac{5}{4}x+15$. \\
The coordinates of $A$ is $(0,15)$.\\
The coordinates of $B$ is $\displaystyle \left(\frac{0+12}{2},\frac{15+0}{2}\right)=\left(6,\frac{15}{2}\right)$.',
  'Substituting $C(12,0)$ into $L$, we have
\begin{flalign*}
    0&=-\frac{5}{4}(12)+k\\
    0&=-15+k\\
    k&=15
\end{flalign*}
Therefore, we have $\displaystyle y=-\frac{5}{4}x+15$. \\
The coordinates of $A$ is $(0,15)$.\\
The coordinates of $B$ is $\displaystyle \left(\frac{0+12}{2},\frac{15+0}{2}\right)=\left(6,\frac{15}{2}\right)$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 39
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  39,
  'English',
  'In the figure, the straight line $\displaystyle L:y=-\frac{1}{2}x+k$ cuts the $x$-axis and the $y$-axis at $C(14,0)$ and $A$ respectively. $B$ is the mid-point of $AC$. Find the coordinates of $A$ and $B$. 
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}  
  \draw[->] (-1,0) -- (16/3,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,10/2) node[above] {$y$};
  
  \coordinate (A) at (0,7/2);
  \coordinate (C) at (14/3,0);
  \coordinate (B) at (7/3,3.5/2);
  
  \draw[blue, thick] (A) -- (C) node[above right] {$L$};
  
  \filldraw (A) circle (2pt) node[left] {$A$};
  \filldraw (C) circle (2pt) node[below] {$C(14,0)$};
  \filldraw (B) circle (2pt) node[above right] {$B$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the straight line $\displaystyle L:y=-\frac{1}{2}x+k$ cuts the $x$-axis and the $y$-axis at $C(14,0)$ and $A$ respectively. $B$ is the mid-point of $AC$. Find the coordinates of $A$ and $B$. 
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}  
  \draw[->] (-1,0) -- (16/3,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,10/2) node[above] {$y$};
  
  \coordinate (A) at (0,7/2);
  \coordinate (C) at (14/3,0);
  \coordinate (B) at (7/3,3.5/2);
  
  \draw[blue, thick] (A) -- (C) node[above right] {$L$};
  
  \filldraw (A) circle (2pt) node[left] {$A$};
  \filldraw (C) circle (2pt) node[below] {$C(14,0)$};
  \filldraw (B) circle (2pt) node[above right] {$B$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 39 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 39 AND language = 'English'),
  'Substituting $C(14,0)$ into $L$, we have
\begin{flalign*}
    0&=-\frac{1}{2}(14)+k\\
    0&=-7+k\\
    k&=7
\end{flalign*}
Therefore, we have $\displaystyle y=-\frac{1}{2}x+7$. \\
The coordinates of $A$ is $(0,7)$.\\
The coordinates of $B$ is $\displaystyle \left(\frac{0+14}{2},\frac{7+0}{2}\right)=\left(7,\frac{7}{2}\right)$.',
  'Substituting $C(14,0)$ into $L$, we have
\begin{flalign*}
    0&=-\frac{1}{2}(14)+k\\
    0&=-7+k\\
    k&=7
\end{flalign*}
Therefore, we have $\displaystyle y=-\frac{1}{2}x+7$. \\
The coordinates of $A$ is $(0,7)$.\\
The coordinates of $B$ is $\displaystyle \left(\frac{0+14}{2},\frac{7+0}{2}\right)=\left(7,\frac{7}{2}\right)$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 40
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  40,
  'English',
  'In the figure, the straight line $\displaystyle L:y=-\frac{3}{5}x+k$ cuts the $x$-axis and the $y$-axis at $C(20,0)$ and $A$ respectively. $B$ is the mid-point of $AC$. Find the coordinates of $A$ and $B$. 
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}  
  \draw[->] (-1,0) -- (22/4,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,15/3) node[above] {$y$};
  
  \coordinate (A) at (0,12/3);
  \coordinate (C) at (20/4,0);
  \coordinate (B) at (10/4,6/3);
  
  \draw[blue, thick] (A) -- (C) node[above right] {$L$};
  
  \filldraw (A) circle (2pt) node[left] {$A$};
  \filldraw (C) circle (2pt) node[below] {$C(20,0)$};
  \filldraw (B) circle (2pt) node[above right] {$B$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the straight line $\displaystyle L:y=-\frac{3}{5}x+k$ cuts the $x$-axis and the $y$-axis at $C(20,0)$ and $A$ respectively. $B$ is the mid-point of $AC$. Find the coordinates of $A$ and $B$. 
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}  
  \draw[->] (-1,0) -- (22/4,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,15/3) node[above] {$y$};
  
  \coordinate (A) at (0,12/3);
  \coordinate (C) at (20/4,0);
  \coordinate (B) at (10/4,6/3);
  
  \draw[blue, thick] (A) -- (C) node[above right] {$L$};
  
  \filldraw (A) circle (2pt) node[left] {$A$};
  \filldraw (C) circle (2pt) node[below] {$C(20,0)$};
  \filldraw (B) circle (2pt) node[above right] {$B$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 40 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 40 AND language = 'English'),
  'Substituting $C(20,0)$ into $L$, we have
\begin{flalign*}
    0&=-\frac{3}{5}(20)+k\\
    0&=-12+k\\
    k&=12
\end{flalign*}
Therefore, we have $\displaystyle y=-\frac{3}{5}x+12$. \\
The coordinates of $A$ is $(0,12)$.\\
The coordinates of $B$ is $\displaystyle \left(\frac{0+20}{2},\frac{12+0}{2}\right)=(10,6)$.',
  'Substituting $C(20,0)$ into $L$, we have
\begin{flalign*}
    0&=-\frac{3}{5}(20)+k\\
    0&=-12+k\\
    k&=12
\end{flalign*}
Therefore, we have $\displaystyle y=-\frac{3}{5}x+12$. \\
The coordinates of $A$ is $(0,12)$.\\
The coordinates of $B$ is $\displaystyle \left(\frac{0+20}{2},\frac{12+0}{2}\right)=(10,6)$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 41
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  41,
  'English',
  'In the figure, the straight line $\displaystyle L: y=-\frac{3}{2}x+k$ cuts the $x$-axis and the $y$-axis at $C(8,0)$ and $A$ respectively. $B$ is the mid-point of $AC$ and $CD$ is the median of $OA$ in $\triangle OAC$. Find the equation of $BD$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}[scale=1.25]
  % Axes
  \draw[->] (-1,0) -- (10/2,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,14/3) node[above] {$y$};

  \coordinate (O) at (0,0);
  \coordinate (A) at (0,12/3);
  \coordinate (C) at (8/2,0);
  \coordinate (B) at ($(A)!0.5!(C)$);
  \coordinate (D) at ($(O)!0.5!(A)$);

  % Draw line L through A and C
  \draw[blue, thick] (A) -- (C) node[above right] {$L$};
  \draw[red, thick] (C) -- (D);

  % Mark points
  \filldraw (O) circle (2pt) node[below left] {$O$};
  \filldraw (A) circle (2pt) node[above left] {$A$};
  \filldraw (C) circle (2pt) node[below right] {$C(8,0)$};
  \filldraw (B) circle (2pt) node[above right] {$B$};
  \filldraw (D) circle (2pt) node[left] {$D$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the straight line $\displaystyle L: y=-\frac{3}{2}x+k$ cuts the $x$-axis and the $y$-axis at $C(8,0)$ and $A$ respectively. $B$ is the mid-point of $AC$ and $CD$ is the median of $OA$ in $\triangle OAC$. Find the equation of $BD$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}[scale=1.25]
  % Axes
  \draw[->] (-1,0) -- (10/2,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,14/3) node[above] {$y$};

  \coordinate (O) at (0,0);
  \coordinate (A) at (0,12/3);
  \coordinate (C) at (8/2,0);
  \coordinate (B) at ($(A)!0.5!(C)$);
  \coordinate (D) at ($(O)!0.5!(A)$);

  % Draw line L through A and C
  \draw[blue, thick] (A) -- (C) node[above right] {$L$};
  \draw[red, thick] (C) -- (D);

  % Mark points
  \filldraw (O) circle (2pt) node[below left] {$O$};
  \filldraw (A) circle (2pt) node[above left] {$A$};
  \filldraw (C) circle (2pt) node[below right] {$C(8,0)$};
  \filldraw (B) circle (2pt) node[above right] {$B$};
  \filldraw (D) circle (2pt) node[left] {$D$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 41 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 41 AND language = 'English'),
  'Substituting $C(8,0)$ into $L$, we have
\begin{flalign*}
    0&=-\frac{3}{2}(8)+k\\
    0&=-12+k\\
    k&=12
\end{flalign*}
Therefore, we have $\displaystyle y=-\frac{3}{2}x+12$.\\
The coordinates of $A$ is $(0,12)$.\\
The coordinates of $B$ is $\displaystyle \left(\frac{0+8}{2},\frac{12+0}{2}\right)=(4,6)$.\\
The coordinates of $D$ is $\displaystyle \left(0,\frac{12+0}{2}\right)=(0,6)$.\\
Therefore, the equation of $BD$ is
\begin{flalign*}
    y=6
\end{flalign*}',
  'Substituting $C(8,0)$ into $L$, we have
\begin{flalign*}
    0&=-\frac{3}{2}(8)+k\\
    0&=-12+k\\
    k&=12
\end{flalign*}
Therefore, we have $\displaystyle y=-\frac{3}{2}x+12$.\\
The coordinates of $A$ is $(0,12)$.\\
The coordinates of $B$ is $\displaystyle \left(\frac{0+8}{2},\frac{12+0}{2}\right)=(4,6)$.\\
The coordinates of $D$ is $\displaystyle \left(0,\frac{12+0}{2}\right)=(0,6)$.\\
Therefore, the equation of $BD$ is
\begin{flalign*}
    y=6
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 42
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  42,
  'English',
  'In the figure, the straight line $\displaystyle L: y=-\frac{5}{2}x+k$ cuts the $x$-axis and the $y$-axis at $C(4,0)$ and $A$ respectively. $B$ is the mid-point of $AC$ and $CD$ is the median of $OA$ in $\triangle OAC$. Find the equation of $BD$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  % Axes
  \draw[->] (-1,0) -- (6,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,12/1.5) node[above] {$y$};

  \coordinate (O) at (0,0);
  \coordinate (A) at (0,10/1.5);
  \coordinate (C) at (4,0);
  \coordinate (B) at ($(A)!0.5!(C)$);
  \coordinate (D) at ($(O)!0.5!(A)$);
  
  % Draw line L
  \draw[blue, thick] (A) -- (C) node[above right] {$L$};
  \draw[red, thick] (C) -- (D);
  
  % Mark points
  \filldraw (O) circle (2pt) node[below left] {$O$};
  \filldraw (A) circle (2pt) node[above left] {$A$};
  \filldraw (C) circle (2pt) node[below right] {$C(4,0)$};
  \filldraw (B) circle (2pt) node[above right] {$B$};
  \filldraw (D) circle (2pt) node[left] {$D$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the straight line $\displaystyle L: y=-\frac{5}{2}x+k$ cuts the $x$-axis and the $y$-axis at $C(4,0)$ and $A$ respectively. $B$ is the mid-point of $AC$ and $CD$ is the median of $OA$ in $\triangle OAC$. Find the equation of $BD$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  % Axes
  \draw[->] (-1,0) -- (6,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,12/1.5) node[above] {$y$};

  \coordinate (O) at (0,0);
  \coordinate (A) at (0,10/1.5);
  \coordinate (C) at (4,0);
  \coordinate (B) at ($(A)!0.5!(C)$);
  \coordinate (D) at ($(O)!0.5!(A)$);
  
  % Draw line L
  \draw[blue, thick] (A) -- (C) node[above right] {$L$};
  \draw[red, thick] (C) -- (D);
  
  % Mark points
  \filldraw (O) circle (2pt) node[below left] {$O$};
  \filldraw (A) circle (2pt) node[above left] {$A$};
  \filldraw (C) circle (2pt) node[below right] {$C(4,0)$};
  \filldraw (B) circle (2pt) node[above right] {$B$};
  \filldraw (D) circle (2pt) node[left] {$D$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 42 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 42 AND language = 'English'),
  'Substituting $C(4,0)$ into $L$, we have
\begin{flalign*}
    0&=-\frac{5}{2}(4)+k\\
    0&=-10+k\\
    k&=10
\end{flalign*}
Therefore, we have $\displaystyle y=-\frac{5}{2}x+10$.\\
The coordinates of $A$ is $(0,10)$.\\
The coordinates of $B$ is $\displaystyle \left(\frac{0+4}{2},\frac{10+0}{2}\right)=(2,5)$.\\
The coordinates of $D$ is $\displaystyle \left(0,\frac{10+0}{2}\right)=(0,5)$.\\
Therefore, the equation of $BD$ is
\begin{flalign*}
    y=5
\end{flalign*}',
  'Substituting $C(4,0)$ into $L$, we have
\begin{flalign*}
    0&=-\frac{5}{2}(4)+k\\
    0&=-10+k\\
    k&=10
\end{flalign*}
Therefore, we have $\displaystyle y=-\frac{5}{2}x+10$.\\
The coordinates of $A$ is $(0,10)$.\\
The coordinates of $B$ is $\displaystyle \left(\frac{0+4}{2},\frac{10+0}{2}\right)=(2,5)$.\\
The coordinates of $D$ is $\displaystyle \left(0,\frac{10+0}{2}\right)=(0,5)$.\\
Therefore, the equation of $BD$ is
\begin{flalign*}
    y=5
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 43
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  43,
  'English',
  'In the figure, the straight line $\displaystyle L: y=-2x+k$ cuts the $x$-axis and the $y$-axis at $C(5,0)$ and $A$ respectively. $B$ is the mid-point of $AC$ and $CD$ is the median of $OA$ in $\triangle OAC$. Find the equation of $BD$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}[scale=1.2]
  % Axes
  \draw[->] (-1,0) -- (7/1.5,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,12/2.5) node[above] {$y$};

  \coordinate (O) at (0,0);
  \coordinate (A) at (0,10/2.5);
  \coordinate (C) at (5/1.5,0);
  \coordinate (B) at ($(A)!0.5!(C)$);
  \coordinate (D) at ($(O)!0.5!(A)$);

  % Draw line L
  \draw[blue, thick] (A) -- (C) node[above right] {$L$};
  \draw[red, thick] (C) -- (D);

  % Mark points
  \filldraw (O) circle (2pt) node[below left] {$O$};
  \filldraw (A) circle (2pt) node[above left] {$A$};
  \filldraw (C) circle (2pt) node[below right] {$C(5,0)$};
  \filldraw (B) circle (2pt) node[above right] {$B$};
  \filldraw (D) circle (2pt) node[left] {$D$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the straight line $\displaystyle L: y=-2x+k$ cuts the $x$-axis and the $y$-axis at $C(5,0)$ and $A$ respectively. $B$ is the mid-point of $AC$ and $CD$ is the median of $OA$ in $\triangle OAC$. Find the equation of $BD$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}[scale=1.2]
  % Axes
  \draw[->] (-1,0) -- (7/1.5,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,12/2.5) node[above] {$y$};

  \coordinate (O) at (0,0);
  \coordinate (A) at (0,10/2.5);
  \coordinate (C) at (5/1.5,0);
  \coordinate (B) at ($(A)!0.5!(C)$);
  \coordinate (D) at ($(O)!0.5!(A)$);

  % Draw line L
  \draw[blue, thick] (A) -- (C) node[above right] {$L$};
  \draw[red, thick] (C) -- (D);

  % Mark points
  \filldraw (O) circle (2pt) node[below left] {$O$};
  \filldraw (A) circle (2pt) node[above left] {$A$};
  \filldraw (C) circle (2pt) node[below right] {$C(5,0)$};
  \filldraw (B) circle (2pt) node[above right] {$B$};
  \filldraw (D) circle (2pt) node[left] {$D$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 43 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 43 AND language = 'English'),
  'Substituting $C(5,0)$ into $L$, we have
\begin{flalign*}
    0&=-2(5)+k\\
    =&=-10+k\\
    k&=10
\end{flalign*}
Therefore, we have $y=-2x+10$.\\
The coordinates of $A$ is $(0,10)$.\\
The coordinates of $B$ is $\displaystyle \left(\frac{0+5}{2},\frac{10+0}{2}\right)=\left(\frac{5}{2},5\right)$.\\
The coordinates of $D$ is $\displaystyle \left(0,\frac{10+0}{2}\right)=(0,5)$.\\
Therefore, the equation of $BD$ is
\begin{flalign*}
    y=5
\end{flalign*}',
  'Substituting $C(5,0)$ into $L$, we have
\begin{flalign*}
    0&=-2(5)+k\\
    =&=-10+k\\
    k&=10
\end{flalign*}
Therefore, we have $y=-2x+10$.\\
The coordinates of $A$ is $(0,10)$.\\
The coordinates of $B$ is $\displaystyle \left(\frac{0+5}{2},\frac{10+0}{2}\right)=\left(\frac{5}{2},5\right)$.\\
The coordinates of $D$ is $\displaystyle \left(0,\frac{10+0}{2}\right)=(0,5)$.\\
Therefore, the equation of $BD$ is
\begin{flalign*}
    y=5
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 44
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  44,
  'English',
  'In the figure, the straight line $\displaystyle L: y=-\frac{5}{3}x+k$ cuts the $x$-axis and the $y$-axis at $C(9,0)$ and $A$ respectively. $B$ is the mid-point of $AC$ and $CD$ is the median of $OA$ in $\triangle OAC$. Find the equation of $BD$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  % Axes
  \draw[->] (-1,0) -- (11/2,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,17/3) node[above] {$y$};

  \coordinate (O) at (0,0);
  \coordinate (A) at (0,15/3);
  \coordinate (C) at (9/2,0);
  \coordinate (B) at ($(A)!0.5!(C)$);
  \coordinate (D) at ($(O)!0.5!(A)$);

  % Draw line L
  \draw[blue, thick] (A) -- (C) node[above right] {$L$};
  \draw[red, thick] (C) -- (D);

  % Mark points
  \filldraw (O) circle (2pt) node[below left] {$O$};
  \filldraw (A) circle (2pt) node[above left] {$A$};
  \filldraw (C) circle (2pt) node[below right] {$C(9,0)$};
  \filldraw (B) circle (2pt) node[above right] {$B$};
  \filldraw (D) circle (2pt) node[left] {$D$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the straight line $\displaystyle L: y=-\frac{5}{3}x+k$ cuts the $x$-axis and the $y$-axis at $C(9,0)$ and $A$ respectively. $B$ is the mid-point of $AC$ and $CD$ is the median of $OA$ in $\triangle OAC$. Find the equation of $BD$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  % Axes
  \draw[->] (-1,0) -- (11/2,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,17/3) node[above] {$y$};

  \coordinate (O) at (0,0);
  \coordinate (A) at (0,15/3);
  \coordinate (C) at (9/2,0);
  \coordinate (B) at ($(A)!0.5!(C)$);
  \coordinate (D) at ($(O)!0.5!(A)$);

  % Draw line L
  \draw[blue, thick] (A) -- (C) node[above right] {$L$};
  \draw[red, thick] (C) -- (D);

  % Mark points
  \filldraw (O) circle (2pt) node[below left] {$O$};
  \filldraw (A) circle (2pt) node[above left] {$A$};
  \filldraw (C) circle (2pt) node[below right] {$C(9,0)$};
  \filldraw (B) circle (2pt) node[above right] {$B$};
  \filldraw (D) circle (2pt) node[left] {$D$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 44 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 44 AND language = 'English'),
  'Substituting $C(9,0)$ into $L$, we have
\begin{flalign*}
    0&=-\frac{5}{3}(9)+k\\
    0&=-15+k\\
    k&=15
\end{flalign*}
Therefore, we have $\displaystyle y=-\frac{5}{3}x+15$.\\
The coordinates of $A$ is $(0,15)$.\\
The coordinates of $B$ is $\displaystyle \left(\frac{0+9}{2},\frac{15+0}{2}\right)=\left(\frac{9}{2},\frac{15}{2}\right)$.\\
The coordinates of $D$ is $\displaystyle \left(0,\frac{15+0}{2}\right)=\left(0,\frac{15}{2}\right)$.\\
Therefore, the equation of $BD$ is
\begin{flalign*}
    y=\frac{15}{2}
\end{flalign*}',
  'Substituting $C(9,0)$ into $L$, we have
\begin{flalign*}
    0&=-\frac{5}{3}(9)+k\\
    0&=-15+k\\
    k&=15
\end{flalign*}
Therefore, we have $\displaystyle y=-\frac{5}{3}x+15$.\\
The coordinates of $A$ is $(0,15)$.\\
The coordinates of $B$ is $\displaystyle \left(\frac{0+9}{2},\frac{15+0}{2}\right)=\left(\frac{9}{2},\frac{15}{2}\right)$.\\
The coordinates of $D$ is $\displaystyle \left(0,\frac{15+0}{2}\right)=\left(0,\frac{15}{2}\right)$.\\
Therefore, the equation of $BD$ is
\begin{flalign*}
    y=\frac{15}{2}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 45
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  45,
  'English',
  'In the figure, the straight line $\displaystyle L: y=-\frac{4}{7}x+k$ cuts the $x$-axis and the $y$-axis at $C(49,0)$ and $A$ respectively. $B$ is the mid-point of $AC$ and $CD$ is the median of $OA$ in $\triangle OAC$. Find the equation of $BD$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}[scale=0.8]
  % Axes
  \draw[->] (-5/7.5,0) -- (55/7.5,0) node[right] {$x$};
  \draw[->] (0,-5/6) -- (0,35/6) node[above] {$y$};

  \coordinate (O) at (0,0);
  \coordinate (A) at (0,28/6);
  \coordinate (C) at (49/7.5,0);
  \coordinate (B) at ($(A)!0.5!(C)$);
  \coordinate (D) at ($(O)!0.5!(A)$);

  % Draw line L
  \draw[blue, thick] (A) -- (C) node[above right] {$L$};
  \draw[red, thick] (C) -- (D);

  % Mark points
  \filldraw (O) circle (3pt) node[below left] {$O$};
  \filldraw (A) circle (3pt) node[above left] {$A$};
  \filldraw (C) circle (3pt) node[below right] {$C(49,0)$};
  \filldraw (B) circle (3pt) node[above right] {$B$};
  \filldraw (D) circle (3pt) node[left] {$D$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the straight line $\displaystyle L: y=-\frac{4}{7}x+k$ cuts the $x$-axis and the $y$-axis at $C(49,0)$ and $A$ respectively. $B$ is the mid-point of $AC$ and $CD$ is the median of $OA$ in $\triangle OAC$. Find the equation of $BD$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}[scale=0.8]
  % Axes
  \draw[->] (-5/7.5,0) -- (55/7.5,0) node[right] {$x$};
  \draw[->] (0,-5/6) -- (0,35/6) node[above] {$y$};

  \coordinate (O) at (0,0);
  \coordinate (A) at (0,28/6);
  \coordinate (C) at (49/7.5,0);
  \coordinate (B) at ($(A)!0.5!(C)$);
  \coordinate (D) at ($(O)!0.5!(A)$);

  % Draw line L
  \draw[blue, thick] (A) -- (C) node[above right] {$L$};
  \draw[red, thick] (C) -- (D);

  % Mark points
  \filldraw (O) circle (3pt) node[below left] {$O$};
  \filldraw (A) circle (3pt) node[above left] {$A$};
  \filldraw (C) circle (3pt) node[below right] {$C(49,0)$};
  \filldraw (B) circle (3pt) node[above right] {$B$};
  \filldraw (D) circle (3pt) node[left] {$D$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 45 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 45 AND language = 'English'),
  'Substituting $C(49,0)$ into $L$, we have
\begin{flalign*}
    0&=-\frac{4}{7}(49)+k\\
    0&=-28+k\\
    k&=28
\end{flalign*}
Therefore, we have $\displaystyle y=-\frac{4}{7}x+28$.\\
The coordinates of $A$ is $(0,28)$.\\
The coordinates of $B$ is $\displaystyle \left(\frac{0+49}{2},\frac{28+0}{2}\right)=\left(\frac{49}{2},14\right)$.\\
The coordinates of $D$ is $\displaystyle \left(0,\frac{28+0}{2}\right)=(0,14)$.\\
Therefore, the equation of $BD$ is
\begin{flalign*}
    y=14
\end{flalign*}',
  'Substituting $C(49,0)$ into $L$, we have
\begin{flalign*}
    0&=-\frac{4}{7}(49)+k\\
    0&=-28+k\\
    k&=28
\end{flalign*}
Therefore, we have $\displaystyle y=-\frac{4}{7}x+28$.\\
The coordinates of $A$ is $(0,28)$.\\
The coordinates of $B$ is $\displaystyle \left(\frac{0+49}{2},\frac{28+0}{2}\right)=\left(\frac{49}{2},14\right)$.\\
The coordinates of $D$ is $\displaystyle \left(0,\frac{28+0}{2}\right)=(0,14)$.\\
Therefore, the equation of $BD$ is
\begin{flalign*}
    y=14
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 46
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  46,
  'English',
  'In the figure, the straight line $L:y=2x-3$ passes through the point $A(3,a)$ and cuts the $x$-axis at $B$. $C$ is a point on the $x$-axis such that the area of $\triangle ABC$ is $30$ square units. Find the coordinates of $A$, $B$ and $C$. Hence, find the equation of $AC$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}[scale=1.5]
    % Axes
    \draw[->] (-1,0) -- (25/6,0) node[right] {$x$};
    \draw[->] (0,-1) -- (0,3) node[above] {$y$};
    
    % Line L: y = 2x - 3
    \draw[domain=0.5:4, blue, thick] plot (\x/6, {2*\x/2-3/2}) node[right] {$L: y=2x-3$};
    
    % Define points
    \coordinate (A) at (3/6,3/2);
    \coordinate (B) at (3/12,0);
    \coordinate (C) at (43/12,0);
    
    % Draw triangle
    \draw[red, thick] (A) -- (C);
    
    % Mark points
    \filldraw (A) circle (2pt) node[above right] {$A$};
    \filldraw (B) circle (2pt) node[below right] {$B$};
    \filldraw (C) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the straight line $L:y=2x-3$ passes through the point $A(3,a)$ and cuts the $x$-axis at $B$. $C$ is a point on the $x$-axis such that the area of $\triangle ABC$ is $30$ square units. Find the coordinates of $A$, $B$ and $C$. Hence, find the equation of $AC$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}[scale=1.5]
    % Axes
    \draw[->] (-1,0) -- (25/6,0) node[right] {$x$};
    \draw[->] (0,-1) -- (0,3) node[above] {$y$};
    
    % Line L: y = 2x - 3
    \draw[domain=0.5:4, blue, thick] plot (\x/6, {2*\x/2-3/2}) node[right] {$L: y=2x-3$};
    
    % Define points
    \coordinate (A) at (3/6,3/2);
    \coordinate (B) at (3/12,0);
    \coordinate (C) at (43/12,0);
    
    % Draw triangle
    \draw[red, thick] (A) -- (C);
    
    % Mark points
    \filldraw (A) circle (2pt) node[above right] {$A$};
    \filldraw (B) circle (2pt) node[below right] {$B$};
    \filldraw (C) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 46 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 46 AND language = 'English'),
  'Substituting $A(3,a)$ into $L$, we have
\begin{flalign*}
    a&=2(3)-3\\
    a&=3
\end{flalign*}
The coordinates of $A$ is $(3,3)$.\\
Substituting $B(b,0)$ into $L$, we have
\begin{flalign*}
    0&=2b-3\\
    2b&=3\\
    b&=\frac{3}{2}
\end{flalign*}
The coordinates of $B$ is $\displaystyle \left(\frac{3}{2},0\right)$.\\
Let the coordinates of $C$ be $(c,0)$.\\
Consider the area of $\triangle ABC$, we have
\begin{flalign*}
    \frac{1}{2}\left(c-\frac{3}{2}\right)(3)&=30\\
    c-\frac{3}{2}&=20\\
    c&=\frac{43}{2}
\end{flalign*}
The coordinates of $C$ is $\displaystyle \left(\frac{43}{2},0\right)$.\\
The equation of $AC$ is 
\begin{flalign*}
    \frac{y-3}{x-3}&=\frac{0-3}{\frac{43}{2}-3}\\
    \frac{y-3}{x-3}&=-\frac{6}{37}\\
    37(y-3)&=-6(x-3)\\
    37y-111&=-6x+18\\
    6x+37y-129&=0
\end{flalign*}',
  'Substituting $A(3,a)$ into $L$, we have
\begin{flalign*}
    a&=2(3)-3\\
    a&=3
\end{flalign*}
The coordinates of $A$ is $(3,3)$.\\
Substituting $B(b,0)$ into $L$, we have
\begin{flalign*}
    0&=2b-3\\
    2b&=3\\
    b&=\frac{3}{2}
\end{flalign*}
The coordinates of $B$ is $\displaystyle \left(\frac{3}{2},0\right)$.\\
Let the coordinates of $C$ be $(c,0)$.\\
Consider the area of $\triangle ABC$, we have
\begin{flalign*}
    \frac{1}{2}\left(c-\frac{3}{2}\right)(3)&=30\\
    c-\frac{3}{2}&=20\\
    c&=\frac{43}{2}
\end{flalign*}
The coordinates of $C$ is $\displaystyle \left(\frac{43}{2},0\right)$.\\
The equation of $AC$ is 
\begin{flalign*}
    \frac{y-3}{x-3}&=\frac{0-3}{\frac{43}{2}-3}\\
    \frac{y-3}{x-3}&=-\frac{6}{37}\\
    37(y-3)&=-6(x-3)\\
    37y-111&=-6x+18\\
    6x+37y-129&=0
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 47
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  47,
  'English',
  'In the figure, the straight line $\displaystyle L:y=\frac{1}{3}x+2$ passes through the point $A(3,a)$ and cuts the $x$-axis at $B$. $C$ is a point on the $x$-axis such that the area of $\triangle ABC$ is $18$ square units. Find the coordinates of $A$, $B$ and $C$. Hence, find the equation of $AC$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Axes
    \draw[->] (-10/3,0) -- (8/3,0) node[right] {$x$};
    \draw[->] (0,-1/1.5) -- (0,5/1.5) node[above] {$y$};
    
    % Line L: y = 1/3 x + 2
    \draw[domain=-8:5, blue, thick] plot (\x/3, {1/3*\x/1.5+2/1.5}) node[right] {$L: y=\tfrac{1}{3}x+2$};
    
    % Define key points
    \coordinate (A) at (3/3,3/1.5);
    \coordinate (B) at (-6/3,0);
    \coordinate (C) at (6/3,0);
    
    % Draw triangle
    \draw[red, thick] (A) -- (C);
    
    % Mark points
    \filldraw (A) circle (2pt) node[above left] {$A$};
    \filldraw (B) circle (2pt) node[below right] {$B$};
    \filldraw (C) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the straight line $\displaystyle L:y=\frac{1}{3}x+2$ passes through the point $A(3,a)$ and cuts the $x$-axis at $B$. $C$ is a point on the $x$-axis such that the area of $\triangle ABC$ is $18$ square units. Find the coordinates of $A$, $B$ and $C$. Hence, find the equation of $AC$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Axes
    \draw[->] (-10/3,0) -- (8/3,0) node[right] {$x$};
    \draw[->] (0,-1/1.5) -- (0,5/1.5) node[above] {$y$};
    
    % Line L: y = 1/3 x + 2
    \draw[domain=-8:5, blue, thick] plot (\x/3, {1/3*\x/1.5+2/1.5}) node[right] {$L: y=\tfrac{1}{3}x+2$};
    
    % Define key points
    \coordinate (A) at (3/3,3/1.5);
    \coordinate (B) at (-6/3,0);
    \coordinate (C) at (6/3,0);
    
    % Draw triangle
    \draw[red, thick] (A) -- (C);
    
    % Mark points
    \filldraw (A) circle (2pt) node[above left] {$A$};
    \filldraw (B) circle (2pt) node[below right] {$B$};
    \filldraw (C) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 47 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 47 AND language = 'English'),
  'Substituting $A(3,a)$ into $L$, we have
\begin{flalign*}
    a&=\frac{1}{3}(3)+2\\
    a&=3
\end{flalign*}
The coordinates of $A$ are $(3,3)$.\\
Substituting $B(b,0)$ into $L$, we have
\begin{flalign*}
    0&=\frac{1}{3}b+2\\
    \frac{1}{3}b&=-2\\
    b&=-6
\end{flalign*}
The coordinates of $B$ are $(-6,0)$.\\
Let the coordinates of $C$ be $(c,0)$.\\
Consider the area of $\triangle ABC$, we have
\begin{flalign*}
    \frac{1}{2}\left(c-(-6)\right)(3)&=18\\
    c+6&=12\\
    c&=6
\end{flalign*}
The coordinates of $C$ are $(6,0)$.\\
The equation of $AC$ is 
\begin{flalign*}
    \frac{y-3}{x-3}&=\frac{0-3}{6-3}\\
    \frac{y-3}{x-3}&=-1\\
    y-3&=-x+3\\
    y&=-x+6
\end{flalign*}',
  'Substituting $A(3,a)$ into $L$, we have
\begin{flalign*}
    a&=\frac{1}{3}(3)+2\\
    a&=3
\end{flalign*}
The coordinates of $A$ are $(3,3)$.\\
Substituting $B(b,0)$ into $L$, we have
\begin{flalign*}
    0&=\frac{1}{3}b+2\\
    \frac{1}{3}b&=-2\\
    b&=-6
\end{flalign*}
The coordinates of $B$ are $(-6,0)$.\\
Let the coordinates of $C$ be $(c,0)$.\\
Consider the area of $\triangle ABC$, we have
\begin{flalign*}
    \frac{1}{2}\left(c-(-6)\right)(3)&=18\\
    c+6&=12\\
    c&=6
\end{flalign*}
The coordinates of $C$ are $(6,0)$.\\
The equation of $AC$ is 
\begin{flalign*}
    \frac{y-3}{x-3}&=\frac{0-3}{6-3}\\
    \frac{y-3}{x-3}&=-1\\
    y-3&=-x+3\\
    y&=-x+6
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 48
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  48,
  'English',
  'In the figure, the straight line $L:y=5x-15$ passes through the point $A(2,a)$ and cuts the $x$-axis at $B$. $C$ is a point on the $x$-axis such that the area of $\triangle ABC$ is $50$ square units. Find the coordinates of $A$, $B$ and $C$. Hence, find the equation of $AC$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Axes
    \draw[->] (-1, 0) -- (30/5, 0) node[right] {$x$};
    \draw[->] (0, -15/3+1) -- (0, 10/3-1) node[above] {$y$};
    
    % Line L: y = 5x - 15
    \draw[domain=1:4, blue, thick] plot (\x/5, {5*\x/3-15/3}) node[right] {$L: y=5x-15$};
    
    % Define points
    \coordinate (A) at (2/5,-5/3);
    \coordinate (B) at (3/5,0);
    \coordinate (C) at (23/5,0);
    
    % Draw triangle
    \draw[red, thick] (A) -- (C);
    
    % Mark points
    \filldraw (A) circle (2pt) node[below right] {$A$};
    \filldraw (B) circle (2pt) node[above right] {$B$};
    \filldraw (C) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the straight line $L:y=5x-15$ passes through the point $A(2,a)$ and cuts the $x$-axis at $B$. $C$ is a point on the $x$-axis such that the area of $\triangle ABC$ is $50$ square units. Find the coordinates of $A$, $B$ and $C$. Hence, find the equation of $AC$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Axes
    \draw[->] (-1, 0) -- (30/5, 0) node[right] {$x$};
    \draw[->] (0, -15/3+1) -- (0, 10/3-1) node[above] {$y$};
    
    % Line L: y = 5x - 15
    \draw[domain=1:4, blue, thick] plot (\x/5, {5*\x/3-15/3}) node[right] {$L: y=5x-15$};
    
    % Define points
    \coordinate (A) at (2/5,-5/3);
    \coordinate (B) at (3/5,0);
    \coordinate (C) at (23/5,0);
    
    % Draw triangle
    \draw[red, thick] (A) -- (C);
    
    % Mark points
    \filldraw (A) circle (2pt) node[below right] {$A$};
    \filldraw (B) circle (2pt) node[above right] {$B$};
    \filldraw (C) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 48 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 48 AND language = 'English'),
  'Substituting $A(2,a)$ into $L$, we have
\begin{flalign*}
    a&=5(2)-15\\
    a&=-5
\end{flalign*}
The coordinates of $A$ are $(2,-5)$.\\
Substituting $B(b,0)$ into $L$, we have
\begin{flalign*}
    0&=5b-15\\
    b&=3
\end{flalign*}
The coordinates of $B$ are $(3,0)$.\\
Let the coordinates of $C$ be $(c,0)$.\\
Consider the area of $\triangle ABC$, we have
\begin{flalign*}
    \frac{1}{2}\left(c-3\right)(5)&=50\\
    c-3&=20\\
    c&=23
\end{flalign*}
The coordinates of $C$ are $(23,0)$.\\
The equation of $AC$ is 
\begin{flalign*}
    \frac{y-(-5)}{x-2}&=\frac{0-(-5)}{23-2}\\
    \frac{y+5}{x-2}&=\frac{5}{21}\\
    21(y+5)&=5(x-2)\\
    21y+105&=5x-10\\
    5x-21y-115&=0
\end{flalign*}',
  'Substituting $A(2,a)$ into $L$, we have
\begin{flalign*}
    a&=5(2)-15\\
    a&=-5
\end{flalign*}
The coordinates of $A$ are $(2,-5)$.\\
Substituting $B(b,0)$ into $L$, we have
\begin{flalign*}
    0&=5b-15\\
    b&=3
\end{flalign*}
The coordinates of $B$ are $(3,0)$.\\
Let the coordinates of $C$ be $(c,0)$.\\
Consider the area of $\triangle ABC$, we have
\begin{flalign*}
    \frac{1}{2}\left(c-3\right)(5)&=50\\
    c-3&=20\\
    c&=23
\end{flalign*}
The coordinates of $C$ are $(23,0)$.\\
The equation of $AC$ is 
\begin{flalign*}
    \frac{y-(-5)}{x-2}&=\frac{0-(-5)}{23-2}\\
    \frac{y+5}{x-2}&=\frac{5}{21}\\
    21(y+5)&=5(x-2)\\
    21y+105&=5x-10\\
    5x-21y-115&=0
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 49
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  49,
  'English',
  'In the figure, the straight line $L:y=-2x+12$ passes through the point $A(4,a)$ and cuts the $x$-axis at $B$. $C$ is a point on the $x$-axis such that the area of $\triangle ABC$ is $32$ square units. Find the coordinates of $A$, $B$ and $C$. Hence, find the equation of $AC$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}[scale=1.25]
    % Axes
    \draw[->] (-1,0) -- (25/5,0) node[right] {$x$};
    \draw[->] (0,-5/3) -- (0,10/3) node[above] {$y$};
    
    % Line L: y = -2x + 12
    \draw[domain=1:8, blue, thick] plot (\x/5, {-2*\x/3+12/3}) node[right] {$L: y=-2x+12$};
    
    % Define points
    \coordinate (A) at (4/5,4/3);
    \coordinate (B) at (6/5,0);
    \coordinate (C) at (22/5,0);
    
    % Draw triangle
    \draw[red, thick] (A) -- (C);
    
    % Mark points
    \filldraw (A) circle (2pt) node[above right] {$A$};
    \filldraw (B) circle (2pt) node[below left] {$B$};
    \filldraw (C) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the straight line $L:y=-2x+12$ passes through the point $A(4,a)$ and cuts the $x$-axis at $B$. $C$ is a point on the $x$-axis such that the area of $\triangle ABC$ is $32$ square units. Find the coordinates of $A$, $B$ and $C$. Hence, find the equation of $AC$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}[scale=1.25]
    % Axes
    \draw[->] (-1,0) -- (25/5,0) node[right] {$x$};
    \draw[->] (0,-5/3) -- (0,10/3) node[above] {$y$};
    
    % Line L: y = -2x + 12
    \draw[domain=1:8, blue, thick] plot (\x/5, {-2*\x/3+12/3}) node[right] {$L: y=-2x+12$};
    
    % Define points
    \coordinate (A) at (4/5,4/3);
    \coordinate (B) at (6/5,0);
    \coordinate (C) at (22/5,0);
    
    % Draw triangle
    \draw[red, thick] (A) -- (C);
    
    % Mark points
    \filldraw (A) circle (2pt) node[above right] {$A$};
    \filldraw (B) circle (2pt) node[below left] {$B$};
    \filldraw (C) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 49 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 49 AND language = 'English'),
  'Substituting $A(4,a)$ into $L$, we have
\begin{flalign*}
    a&=-2(4)+12\\
    a&=4
\end{flalign*}
The coordinates of $A$ are $(4,4)$.\\
Substituting $B(b,0)$ into $L$, we have
\begin{flalign*}
    0&=-2b+12\\
    b&=6
\end{flalign*}
The coordinates of $B$ are $(6,0)$.\\
Let the coordinates of $C$ be $(c,0)$.\\
Consider the area of $\triangle ABC$, we have
\begin{flalign*}
    \frac{1}{2}\left(c-6\right)(4)&=32\\
    c-6&=16\\
    c&=22
\end{flalign*}
The coordinates of $C$ are $(22,0)$.\\
The equation of $AC$ is 
\begin{flalign*}
    \frac{y-4}{x-4}&=\frac{0-4}{22-4}\\
    \frac{y-4}{x-4}&=-\frac{2}{9}\\
    9(y-4)&=-2(x-4)\\
    9y-36&=-2x+8\\
    2x+9y-44&=0
\end{flalign*}',
  'Substituting $A(4,a)$ into $L$, we have
\begin{flalign*}
    a&=-2(4)+12\\
    a&=4
\end{flalign*}
The coordinates of $A$ are $(4,4)$.\\
Substituting $B(b,0)$ into $L$, we have
\begin{flalign*}
    0&=-2b+12\\
    b&=6
\end{flalign*}
The coordinates of $B$ are $(6,0)$.\\
Let the coordinates of $C$ be $(c,0)$.\\
Consider the area of $\triangle ABC$, we have
\begin{flalign*}
    \frac{1}{2}\left(c-6\right)(4)&=32\\
    c-6&=16\\
    c&=22
\end{flalign*}
The coordinates of $C$ are $(22,0)$.\\
The equation of $AC$ is 
\begin{flalign*}
    \frac{y-4}{x-4}&=\frac{0-4}{22-4}\\
    \frac{y-4}{x-4}&=-\frac{2}{9}\\
    9(y-4)&=-2(x-4)\\
    9y-36&=-2x+8\\
    2x+9y-44&=0
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 50
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  50,
  'English',
  'In the figure, the straight line $\displaystyle L:y=-\frac{3}{2}x+9$ passes through the point $A(2,a)$ and cuts the $x$-axis at $B$. $C$ is a point on the $x$-axis such that the area of $\triangle ABC$ is $27$ square units. Find the coordinates of $A$, $B$ and $C$. Hence, find the equation of $AC$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}[scale=1.5]
    % Axes
    \draw[->] (-5/5,0) -- (20/5,0) node[right] {$x$};
    \draw[->] (0,-2/3) -- (0,10/3) node[above] {$y$};
    
    % Line L: y = -3/2 x + 9
    \draw[domain=0.5:8, blue, thick] plot (\x/5, {-1.5*\x/3+9/3}) node[right] {$L: y=-\frac{3}{2}x+9$};
    
    % Define points
    \coordinate (A) at (2/5,6/3);
    \coordinate (B) at (6/5,0);
    \coordinate (C) at (15/5,0);
    
    % Draw triangle
    \draw[red, thick] (A) -- (C)=;
    
    % Mark points
    \filldraw (A) circle (2pt) node[above right] {$A$};
    \filldraw (B) circle (2pt) node[below left] {$B$};
    \filldraw (C) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the straight line $\displaystyle L:y=-\frac{3}{2}x+9$ passes through the point $A(2,a)$ and cuts the $x$-axis at $B$. $C$ is a point on the $x$-axis such that the area of $\triangle ABC$ is $27$ square units. Find the coordinates of $A$, $B$ and $C$. Hence, find the equation of $AC$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}[scale=1.5]
    % Axes
    \draw[->] (-5/5,0) -- (20/5,0) node[right] {$x$};
    \draw[->] (0,-2/3) -- (0,10/3) node[above] {$y$};
    
    % Line L: y = -3/2 x + 9
    \draw[domain=0.5:8, blue, thick] plot (\x/5, {-1.5*\x/3+9/3}) node[right] {$L: y=-\frac{3}{2}x+9$};
    
    % Define points
    \coordinate (A) at (2/5,6/3);
    \coordinate (B) at (6/5,0);
    \coordinate (C) at (15/5,0);
    
    % Draw triangle
    \draw[red, thick] (A) -- (C)=;
    
    % Mark points
    \filldraw (A) circle (2pt) node[above right] {$A$};
    \filldraw (B) circle (2pt) node[below left] {$B$};
    \filldraw (C) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 50 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 50 AND language = 'English'),
  'Substituting $A(2,a)$ into $L$, we have
\begin{flalign*}
    a&=-\frac{3}{2}(2)+9\\
    a&=6
\end{flalign*}
The coordinates of $A$ are $(2,6)$.\\
Substituting $B(b,0)$ into $L$, we have
\begin{flalign*}
    0&=-\frac{3}{2}b+9\\
    \frac{3}{2}b&=9\\
    b&=6
\end{flalign*}
The coordinates of $B$ are $(6,0)$.\\
Let the coordinates of $C$ be $(c,0)$.\\
Consider the area of $\triangle ABC$, we have
\begin{flalign*}
    \frac{1}{2}\left(c-6\right)(6)&=27\\
    c-6&=9\\
    c&=15
\end{flalign*}
The coordinates of $C$ are $(15,0)$.\\
The equation of $AC$ is 
\begin{flalign*}
    \frac{y-6}{x-2}&=\frac{0-6}{15-2}\\
    \frac{y-6}{x-2}&=\frac{-6}{13}\\
    13(y-6)&=-6(x-2)\\
    13y-78&=-6x+12\\
    6x+13y-90&=0
\end{flalign*}',
  'Substituting $A(2,a)$ into $L$, we have
\begin{flalign*}
    a&=-\frac{3}{2}(2)+9\\
    a&=6
\end{flalign*}
The coordinates of $A$ are $(2,6)$.\\
Substituting $B(b,0)$ into $L$, we have
\begin{flalign*}
    0&=-\frac{3}{2}b+9\\
    \frac{3}{2}b&=9\\
    b&=6
\end{flalign*}
The coordinates of $B$ are $(6,0)$.\\
Let the coordinates of $C$ be $(c,0)$.\\
Consider the area of $\triangle ABC$, we have
\begin{flalign*}
    \frac{1}{2}\left(c-6\right)(6)&=27\\
    c-6&=9\\
    c&=15
\end{flalign*}
The coordinates of $C$ are $(15,0)$.\\
The equation of $AC$ is 
\begin{flalign*}
    \frac{y-6}{x-2}&=\frac{0-6}{15-2}\\
    \frac{y-6}{x-2}&=\frac{-6}{13}\\
    13(y-6)&=-6(x-2)\\
    13y-78&=-6x+12\\
    6x+13y-90&=0
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 51
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  51,
  'English',
  'It is given that the straight lines $L_1: 2x+ay-5=0$ and $L_2: 4x+5y+b=0$ are perpendicular to each other, and they have the same $y$-intercept. Find the values of $a$ and $b$.',
  'It is given that the straight lines $L_1: 2x+ay-5=0$ and $L_2: 4x+5y+b=0$ are perpendicular to each other, and they have the same $y$-intercept. Find the values of $a$ and $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 51 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 51 AND language = 'English'),
  'From $L_1$, we have
\begin{flalign*}
    2x+ay-5&=0\\
    y&=-\frac{2}{a}x+\frac{5}{a}
\end{flalign*}
From $L_2$, we have
\begin{flalign*}
    4x+5y+b&=0\\
    y&=-\frac{4}{5}x-\frac{b}{5}
\end{flalign*}
Therefore, we have
\begin{flalign}
    -\frac{2}{a}\times -\frac{4}{5}&=-1 \tag{1}\\
    \frac{5}{a}&=-\frac{b}{5} \tag{2}
\end{flalign}
By $(1)$, we have
\begin{flalign*}
    -\frac{2}{a}\times -\frac{4}{5}&=-1\\  
    -\frac{2}{a}&=\frac{5}{4}\\
    -2(4)&=5a\\
    a&=-\frac{8}{5}
\end{flalign*}
Substituting $\displaystyle a=-\frac{8}{5}$ into $(2)$, we have
\begin{flalign*}
    \frac{5}{-\frac{8}{5}}&=-\frac{b}{5}\\
    -\frac{25}{8}&=-\frac{b}{5}\\
    \frac{25}{8}&=\frac{b}{5}\\
    b&=\frac{125}{8}
\end{flalign*}
Therefore, we have $\displaystyle (a,b)=\left(-\frac{8}{5},\frac{125}{8}\right)$.',
  'From $L_1$, we have
\begin{flalign*}
    2x+ay-5&=0\\
    y&=-\frac{2}{a}x+\frac{5}{a}
\end{flalign*}
From $L_2$, we have
\begin{flalign*}
    4x+5y+b&=0\\
    y&=-\frac{4}{5}x-\frac{b}{5}
\end{flalign*}
Therefore, we have
\begin{flalign}
    -\frac{2}{a}\times -\frac{4}{5}&=-1 \tag{1}\\
    \frac{5}{a}&=-\frac{b}{5} \tag{2}
\end{flalign}
By $(1)$, we have
\begin{flalign*}
    -\frac{2}{a}\times -\frac{4}{5}&=-1\\  
    -\frac{2}{a}&=\frac{5}{4}\\
    -2(4)&=5a\\
    a&=-\frac{8}{5}
\end{flalign*}
Substituting $\displaystyle a=-\frac{8}{5}$ into $(2)$, we have
\begin{flalign*}
    \frac{5}{-\frac{8}{5}}&=-\frac{b}{5}\\
    -\frac{25}{8}&=-\frac{b}{5}\\
    \frac{25}{8}&=\frac{b}{5}\\
    b&=\frac{125}{8}
\end{flalign*}
Therefore, we have $\displaystyle (a,b)=\left(-\frac{8}{5},\frac{125}{8}\right)$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 52
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  52,
  'English',
  'It is given that the straight lines $L_1: 3x+4y+a=0$ and $L_2: bx-8y+7=0$ are perpendicular to each other, and they have the same $y$-intercept. Find the values of $a$ and $b$.',
  'It is given that the straight lines $L_1: 3x+4y+a=0$ and $L_2: bx-8y+7=0$ are perpendicular to each other, and they have the same $y$-intercept. Find the values of $a$ and $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 52 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 52 AND language = 'English'),
  'From $L_1$, we have
\begin{flalign*}
    3x+4y+a&=0\\
    y&=-\frac{3}{4}x-\frac{a}{4}
\end{flalign*}
From $L_2$, we have
\begin{flalign*}
    bx-8y+7&=0\\
    y&=\frac{b}{8}x+\frac{7}{8}
\end{flalign*}
Therefore, we have
\begin{flalign}
    -\frac{3}{4}\times \frac{b}{8}&=-1 \tag{1}\\
    -\frac{a}{4}&=\frac{7}{8} \tag{2}
\end{flalign}
By $(1)$, we have
\begin{flalign*}
    -\frac{3}{4}\times \frac{b}{8}&=-1\\
    \frac{b}{8}&=\frac{4}{3}\\
    b&=\frac{32}{3}
\end{flalign*}
By $(2)$, we have
\begin{flalign*}
    -\frac{a}{4}&=\frac{7}{8}\\
    a&=-\frac{7}{2}
\end{flalign*}
Therefore, we have $\displaystyle (a,b)=\left(-\frac{7}{2},\frac{32}{3}\right)$',
  'From $L_1$, we have
\begin{flalign*}
    3x+4y+a&=0\\
    y&=-\frac{3}{4}x-\frac{a}{4}
\end{flalign*}
From $L_2$, we have
\begin{flalign*}
    bx-8y+7&=0\\
    y&=\frac{b}{8}x+\frac{7}{8}
\end{flalign*}
Therefore, we have
\begin{flalign}
    -\frac{3}{4}\times \frac{b}{8}&=-1 \tag{1}\\
    -\frac{a}{4}&=\frac{7}{8} \tag{2}
\end{flalign}
By $(1)$, we have
\begin{flalign*}
    -\frac{3}{4}\times \frac{b}{8}&=-1\\
    \frac{b}{8}&=\frac{4}{3}\\
    b&=\frac{32}{3}
\end{flalign*}
By $(2)$, we have
\begin{flalign*}
    -\frac{a}{4}&=\frac{7}{8}\\
    a&=-\frac{7}{2}
\end{flalign*}
Therefore, we have $\displaystyle (a,b)=\left(-\frac{7}{2},\frac{32}{3}\right)$'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 53
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  53,
  'English',
  'It is given that the straight lines $L_1: ax-2y+4=0$ and $L_2: 6x+by-8=0$ are perpendicular to each other, and they have the same $y$-intercept. Find the values of $a$ and $b$.',
  'It is given that the straight lines $L_1: ax-2y+4=0$ and $L_2: 6x+by-8=0$ are perpendicular to each other, and they have the same $y$-intercept. Find the values of $a$ and $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 53 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 53 AND language = 'English'),
  'From $L_1$, we have
\begin{flalign*}
    ax-2y+4&=0\\
    y&=\frac{a}{2}x+\frac{4}{2}\\
    y&=\frac{a}{2}x+2
\end{flalign*}
From $L_2$, we have
\begin{flalign*}
    6x+by-8&=0\\
    y&=-\frac{6}{b}x+\frac{8}{b}
\end{flalign*}
Therefore, we have
\begin{flalign}
    \frac{a}{2}\times -\frac{6}{b}&=-1 \tag{1}\\
    2&=\frac{8}{b} \tag{2}
\end{flalign}
By $(2)$, we have
\begin{flalign*}
    2&=\frac{8}{b}\\
    b&=4
\end{flalign*}
Substituting $b=4$ into $(1)$, we have
\begin{flalign*}
    \frac{a}{2}\times -\frac{6}{4}&=-1\\
    \frac{a}{2}\times -\frac{3}{2}&=-1\\
    \frac{a}{2}&=\frac{2}{3}\\
    a&=\frac{4}{3}
\end{flalign*}
Therefore, we have $\displaystyle (a,b)=\left(\frac{4}{3},4\right)$.',
  'From $L_1$, we have
\begin{flalign*}
    ax-2y+4&=0\\
    y&=\frac{a}{2}x+\frac{4}{2}\\
    y&=\frac{a}{2}x+2
\end{flalign*}
From $L_2$, we have
\begin{flalign*}
    6x+by-8&=0\\
    y&=-\frac{6}{b}x+\frac{8}{b}
\end{flalign*}
Therefore, we have
\begin{flalign}
    \frac{a}{2}\times -\frac{6}{b}&=-1 \tag{1}\\
    2&=\frac{8}{b} \tag{2}
\end{flalign}
By $(2)$, we have
\begin{flalign*}
    2&=\frac{8}{b}\\
    b&=4
\end{flalign*}
Substituting $b=4$ into $(1)$, we have
\begin{flalign*}
    \frac{a}{2}\times -\frac{6}{4}&=-1\\
    \frac{a}{2}\times -\frac{3}{2}&=-1\\
    \frac{a}{2}&=\frac{2}{3}\\
    a&=\frac{4}{3}
\end{flalign*}
Therefore, we have $\displaystyle (a,b)=\left(\frac{4}{3},4\right)$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 54
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  54,
  'English',
  'It is given that the straight lines $L_1: ax+3y+6=0$ and $L_2: 4x+by-12=0$ are perpendicular to each other, and they have the same $y$-intercept. Find the values of $a$ and $b$.',
  'It is given that the straight lines $L_1: ax+3y+6=0$ and $L_2: 4x+by-12=0$ are perpendicular to each other, and they have the same $y$-intercept. Find the values of $a$ and $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 54 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 54 AND language = 'English'),
  'From $L_1$, we have
\begin{flalign*}
    ax+3y+6&=0\\
    y&=-\frac{a}{3}x-\frac{6}{3}\\
    y&=-\frac{a}{3}x-2
\end{flalign*}
From $L_2$, we have
\begin{flalign*}
    4x+by-12&=0\\
    y&=-\frac{4}{b}x+\frac{12}{b}
\end{flalign*}
Therefore, we have
\begin{flalign}
    -\frac{a}{3}\times -\frac{4}{b}&=-1 \tag{1}\\
    -2&=\frac{12}{b} \tag{2}
\end{flalign}
By $(2)$, we have
\begin{flalign*}
    -2&=\frac{12}{b}\\
    b&=-6
\end{flalign*}
Substituting $b=-6$ into $(1)$, we have
\begin{flalign*}
    -\frac{a}{3}\times -\frac{4}{-6}&=-1\\
    -\frac{a}{3}\times \frac{2}{3}&=-1\\
    -\frac{a}{3}&=-\frac{3}{2}\\
    \frac{a}{3}&=\frac{3}{2}\\
    a&=\frac{9}{2}
\end{flalign*}
Therefore, we have $\displaystyle (a,b)=\left(\frac{9}{2},-6\right)$.',
  'From $L_1$, we have
\begin{flalign*}
    ax+3y+6&=0\\
    y&=-\frac{a}{3}x-\frac{6}{3}\\
    y&=-\frac{a}{3}x-2
\end{flalign*}
From $L_2$, we have
\begin{flalign*}
    4x+by-12&=0\\
    y&=-\frac{4}{b}x+\frac{12}{b}
\end{flalign*}
Therefore, we have
\begin{flalign}
    -\frac{a}{3}\times -\frac{4}{b}&=-1 \tag{1}\\
    -2&=\frac{12}{b} \tag{2}
\end{flalign}
By $(2)$, we have
\begin{flalign*}
    -2&=\frac{12}{b}\\
    b&=-6
\end{flalign*}
Substituting $b=-6$ into $(1)$, we have
\begin{flalign*}
    -\frac{a}{3}\times -\frac{4}{-6}&=-1\\
    -\frac{a}{3}\times \frac{2}{3}&=-1\\
    -\frac{a}{3}&=-\frac{3}{2}\\
    \frac{a}{3}&=\frac{3}{2}\\
    a&=\frac{9}{2}
\end{flalign*}
Therefore, we have $\displaystyle (a,b)=\left(\frac{9}{2},-6\right)$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 55
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  55,
  'English',
  'It is given that the straight lines $L_1: 4ax-8y+2=0$ and $L_2: 8x+5by-10=0$ are perpendicular to each other, and they have the same $y$-intercept. Find the values of $a$ and $b$.',
  'It is given that the straight lines $L_1: 4ax-8y+2=0$ and $L_2: 8x+5by-10=0$ are perpendicular to each other, and they have the same $y$-intercept. Find the values of $a$ and $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 55 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 55 AND language = 'English'),
  'From $L_1$, we have
\begin{flalign*}
    4ax-8y+2&=0\\
    2ax-4y+1&=0\\
    y&=\frac{2a}{4}x+\frac{1}{4}\\
    y&=\frac{a}{2}x+\frac{1}{4}
\end{flalign*}
From $L_2$, we have
\begin{flalign*}
    8x+5by-10&=0\\
    y&=-\frac{8}{5b}x+\frac{10}{5b}\\
    y&=-\frac{8}{5b}x+\frac{2}{b}
\end{flalign*}
Therefore, we have
\begin{flalign}
    \frac{a}{2}\times -\frac{8}{5b}&=-1 \tag{1}\\
    \frac{1}{4}&=\frac{2}{b} \tag{2}
\end{flalign}
From $(2)$, we have
\begin{flalign*}
    \frac{1}{4}&=\frac{2}{b}\\
    b&=8
\end{flalign*}
Substituting $b=8$ into $(1)$, we have
\begin{flalign*}
    \frac{a}{2}\times -\frac{8}{5(8)}&=-1\\
    \frac{a}{2}\times -\frac{1}{5}&=-1\\
    \frac{a}{2}&=5\\
    a&=10
\end{flalign*}
Therefore, we have $(a,b)=(10,8)$.',
  'From $L_1$, we have
\begin{flalign*}
    4ax-8y+2&=0\\
    2ax-4y+1&=0\\
    y&=\frac{2a}{4}x+\frac{1}{4}\\
    y&=\frac{a}{2}x+\frac{1}{4}
\end{flalign*}
From $L_2$, we have
\begin{flalign*}
    8x+5by-10&=0\\
    y&=-\frac{8}{5b}x+\frac{10}{5b}\\
    y&=-\frac{8}{5b}x+\frac{2}{b}
\end{flalign*}
Therefore, we have
\begin{flalign}
    \frac{a}{2}\times -\frac{8}{5b}&=-1 \tag{1}\\
    \frac{1}{4}&=\frac{2}{b} \tag{2}
\end{flalign}
From $(2)$, we have
\begin{flalign*}
    \frac{1}{4}&=\frac{2}{b}\\
    b&=8
\end{flalign*}
Substituting $b=8$ into $(1)$, we have
\begin{flalign*}
    \frac{a}{2}\times -\frac{8}{5(8)}&=-1\\
    \frac{a}{2}\times -\frac{1}{5}&=-1\\
    \frac{a}{2}&=5\\
    a&=10
\end{flalign*}
Therefore, we have $(a,b)=(10,8)$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 56
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  56,
  'English',
  'The two straight lines $L_1: 2x+5y+a=0$ and $L_2: 3x+by-9=0$ are parallel to each other, and the $x$-intercept of $L_1$ is equal to the $y$-intercept of $L_2$. Find the values of $a$ and $b$.',
  'The two straight lines $L_1: 2x+5y+a=0$ and $L_2: 3x+by-9=0$ are parallel to each other, and the $x$-intercept of $L_1$ is equal to the $y$-intercept of $L_2$. Find the values of $a$ and $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 56 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 56 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 57
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  57,
  'English',
  'The two straight lines $L_1: 5x-3y+a=0$ and $L_2: 10x-by-8=0$ are parallel to each other, and the $x$-intercept of $L_1$ is equal to the $y$-intercept of $L_2$. Find the values of $a$ and $b$.',
  'The two straight lines $L_1: 5x-3y+a=0$ and $L_2: 10x-by-8=0$ are parallel to each other, and the $x$-intercept of $L_1$ is equal to the $y$-intercept of $L_2$. Find the values of $a$ and $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 57 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 57 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 58
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  58,
  'English',
  'The two straight lines $L_1: 7x+2y+a=0$ and $L_2: 14x+by+5=0$ are parallel to each other, and the $x$-intercept of $L_1$ is equal to the $y$-intercept of $L_2$. Find the values of $a$ and $b$.',
  'The two straight lines $L_1: 7x+2y+a=0$ and $L_2: 14x+by+5=0$ are parallel to each other, and the $x$-intercept of $L_1$ is equal to the $y$-intercept of $L_2$. Find the values of $a$ and $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 58 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 58 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 59
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  59,
  'English',
  'The two straight lines $L_1: 3x+7y+a=0$ and $L_2: 9x+by-3=0$ are parallel to each other, and the $x$-intercept of $L_1$ is equal to the $y$-intercept of $L_2$. Find the values of $a$ and $b$.',
  'The two straight lines $L_1: 3x+7y+a=0$ and $L_2: 9x+by-3=0$ are parallel to each other, and the $x$-intercept of $L_1$ is equal to the $y$-intercept of $L_2$. Find the values of $a$ and $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 59 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 59 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 60
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  60,
  'English',
  'The two straight lines $L_1: 7x+2y+a=0$ and $L_2: 14x+by+8=0$ are parallel to each other, and the $x$-intercept of $L_1$ is equal to the $y$-intercept of $L_2$. Find the values of $a$ and $b$.',
  'The two straight lines $L_1: 7x+2y+a=0$ and $L_2: 14x+by+8=0$ are parallel to each other, and the $x$-intercept of $L_1$ is equal to the $y$-intercept of $L_2$. Find the values of $a$ and $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 60 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 60 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 61
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  61,
  'English',
  'In the figure, $A(1,-2)$ and $B(5,6)$ are points on the straight line $L_1$. The straight line $L_2$ passes through $B$, and $L_1 \perp L_2$. Find the equation of $L_2$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Axes
    \draw[->] (-1, 0) -- (4, 0) node[right] {$x$};
    \draw[->] (0, -1) -- (0, 4) node[above] {$y$};
    
    % Define Points
    \coordinate (A) at (1/2,-2/2);
    \coordinate (B) at (5/2,6/2);
    
    % Draw L1: through A and B
    \draw[blue, thick] (1/2,-2/2) -- (5/2,6/2) node[above right] {$L_1$};
    
    % L2: slope m2 = -1/2. For extension use:
    \coordinate (Bplus) at ($(B)+(2,-1)-(1,1)$);
    \coordinate (Bminus) at ($(B)+(-2,1)-(1,1)$);
    \draw[red, thick] (Bminus) -- (Bplus) node[right] {$L_2$};
    
    % Mark points
    \filldraw ($(A)+(0.25,0.5)$) circle (2pt) node[right] {$A(1,-2)$};
    \filldraw ($(B)-(1,1)+(0.4,-0.2)$) circle (2pt) node[right] {$B(5,6)$};
\end{tikzpicture}}
\end{center}',
  'In the figure, $A(1,-2)$ and $B(5,6)$ are points on the straight line $L_1$. The straight line $L_2$ passes through $B$, and $L_1 \perp L_2$. Find the equation of $L_2$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Axes
    \draw[->] (-1, 0) -- (4, 0) node[right] {$x$};
    \draw[->] (0, -1) -- (0, 4) node[above] {$y$};
    
    % Define Points
    \coordinate (A) at (1/2,-2/2);
    \coordinate (B) at (5/2,6/2);
    
    % Draw L1: through A and B
    \draw[blue, thick] (1/2,-2/2) -- (5/2,6/2) node[above right] {$L_1$};
    
    % L2: slope m2 = -1/2. For extension use:
    \coordinate (Bplus) at ($(B)+(2,-1)-(1,1)$);
    \coordinate (Bminus) at ($(B)+(-2,1)-(1,1)$);
    \draw[red, thick] (Bminus) -- (Bplus) node[right] {$L_2$};
    
    % Mark points
    \filldraw ($(A)+(0.25,0.5)$) circle (2pt) node[right] {$A(1,-2)$};
    \filldraw ($(B)-(1,1)+(0.4,-0.2)$) circle (2pt) node[right] {$B(5,6)$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 61 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 61 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 62
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  62,
  'English',
  'In the figure, $A(-3,4)$ and $B(1,0)$ are points on the straight line $L_1$. The straight line $L_2$ passes through $B$, and $L_1 \perp L_2$. Find the equation of $L_2$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}[scale=1.2]
    % Axes
    \draw[->] (-2.5, 0) -- (2, 0) node[right] {$x$};
    \draw[->] (0, -1) -- (0, 2.25) node[above] {$y$};
    
    % Define Points
    \coordinate (A) at (-3/2,4/2);
    \coordinate (B) at (1/2,0);
    
    % Draw L1:
    \draw[blue, thick] ($(B)+(0.5,-0.5)$) -- ($(A)+(0.5,-0.5)$) node[left] {$L_1$};
    
    % L2: m2 = 1.
    \coordinate (Bplus) at ($(B)+(1,1)$);
    \coordinate (Bminus) at ($(B)+(-1,-1)$);
    \draw[red, thick] (Bminus) -- (Bplus) node[right] {$L_2$};
    
    % Mark points
    \filldraw ($(A)+(1,-1)$) circle (2pt) node[below left] {$A(-3,4)$};
    \filldraw (B) circle (2pt) node[below right] {$B(1,0)$};
\end{tikzpicture}}
\end{center}',
  'In the figure, $A(-3,4)$ and $B(1,0)$ are points on the straight line $L_1$. The straight line $L_2$ passes through $B$, and $L_1 \perp L_2$. Find the equation of $L_2$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}[scale=1.2]
    % Axes
    \draw[->] (-2.5, 0) -- (2, 0) node[right] {$x$};
    \draw[->] (0, -1) -- (0, 2.25) node[above] {$y$};
    
    % Define Points
    \coordinate (A) at (-3/2,4/2);
    \coordinate (B) at (1/2,0);
    
    % Draw L1:
    \draw[blue, thick] ($(B)+(0.5,-0.5)$) -- ($(A)+(0.5,-0.5)$) node[left] {$L_1$};
    
    % L2: m2 = 1.
    \coordinate (Bplus) at ($(B)+(1,1)$);
    \coordinate (Bminus) at ($(B)+(-1,-1)$);
    \draw[red, thick] (Bminus) -- (Bplus) node[right] {$L_2$};
    
    % Mark points
    \filldraw ($(A)+(1,-1)$) circle (2pt) node[below left] {$A(-3,4)$};
    \filldraw (B) circle (2pt) node[below right] {$B(1,0)$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 62 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 62 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 63
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  63,
  'English',
  'In the figure, $A(3,5)$ and $B(7,1)$ are points on the straight line $L_1$. The straight line $L_2$ passes through $B$, and $L_1 \perp L_2$. Find the equation of $L_2$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Axes
    \draw[->] (-0.5, 0.5) -- (10/2, 0.5) node[right] {$x$};
    \draw[->] (0.5, -0.5) -- (0.5, 8/2-0.5) node[above] {$y$};
    
    % Define Points
    \coordinate (A) at (3/2,5/2);
    \coordinate (B) at (7/2,1/2);
    
    % Draw L1:
    \draw[blue, thick] (B) -- (A) node[above left] {$L_1$};
    
    % L2: m2 = 1.
    \coordinate (Bplus) at ($(B)+(1,1)+(0,1)$);
    \coordinate (Bminus) at ($(B)+(-1,-1)+(0,1)$);
    \draw[red, thick] (Bminus) -- (Bplus) node[right] {$L_2$};
    
    % Mark points
    \filldraw ($(A)+(0.5,-0.5)$) circle (2pt) node[left] {$A(3,5)$};
    \filldraw ($(B)+(-0.5,0.5)$) circle (2pt) node[right] {$B(7,1)$};
\end{tikzpicture}}
\end{center}',
  'In the figure, $A(3,5)$ and $B(7,1)$ are points on the straight line $L_1$. The straight line $L_2$ passes through $B$, and $L_1 \perp L_2$. Find the equation of $L_2$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Axes
    \draw[->] (-0.5, 0.5) -- (10/2, 0.5) node[right] {$x$};
    \draw[->] (0.5, -0.5) -- (0.5, 8/2-0.5) node[above] {$y$};
    
    % Define Points
    \coordinate (A) at (3/2,5/2);
    \coordinate (B) at (7/2,1/2);
    
    % Draw L1:
    \draw[blue, thick] (B) -- (A) node[above left] {$L_1$};
    
    % L2: m2 = 1.
    \coordinate (Bplus) at ($(B)+(1,1)+(0,1)$);
    \coordinate (Bminus) at ($(B)+(-1,-1)+(0,1)$);
    \draw[red, thick] (Bminus) -- (Bplus) node[right] {$L_2$};
    
    % Mark points
    \filldraw ($(A)+(0.5,-0.5)$) circle (2pt) node[left] {$A(3,5)$};
    \filldraw ($(B)+(-0.5,0.5)$) circle (2pt) node[right] {$B(7,1)$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 63 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 63 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 64
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  64,
  'English',
  'In the figure, $A(2,-1)$ and $B(6,7)$ are points on the straight line $L_1$. The straight line $L_2$ passes through $B$, and $L_1 \perp L_2$. Find the equation of $L_2$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
     % Axes
    \draw[->] (-0.5, 0.5) -- (10/2, 0.5) node[right] {$x$};
    \draw[->] (0.5, -0.5) -- (0.5, 12/2-1.5) node[above] {$y$};
    
    % Define Points
    \coordinate (A) at (2/2,-1/2);
    \coordinate (B) at (6/2,7/2);
    
    % Draw L1:
    \draw[blue, thick] (A) -- (B) node[above right] {$L_1$};
    
    % L2: m2 = -1/2.
    \coordinate (Bplus) at ($(B)+(2,-1)+(0,-1)$);
    \coordinate (Bminus) at ($(B)+(-2,1)+(0,-1)$);
    \draw[red, thick] (Bminus) -- (Bplus) node[right] {$L_2$};
    
    % Mark points
    \filldraw ($(A)+(0.25,0.5)$) circle (2pt) node[right] {$A(2,-1)$};
    \filldraw ($(B)+(-0.25,-0.5)$) circle (2pt) node[right] {$B(6,7)$};
\end{tikzpicture}}
\end{center}',
  'In the figure, $A(2,-1)$ and $B(6,7)$ are points on the straight line $L_1$. The straight line $L_2$ passes through $B$, and $L_1 \perp L_2$. Find the equation of $L_2$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
     % Axes
    \draw[->] (-0.5, 0.5) -- (10/2, 0.5) node[right] {$x$};
    \draw[->] (0.5, -0.5) -- (0.5, 12/2-1.5) node[above] {$y$};
    
    % Define Points
    \coordinate (A) at (2/2,-1/2);
    \coordinate (B) at (6/2,7/2);
    
    % Draw L1:
    \draw[blue, thick] (A) -- (B) node[above right] {$L_1$};
    
    % L2: m2 = -1/2.
    \coordinate (Bplus) at ($(B)+(2,-1)+(0,-1)$);
    \coordinate (Bminus) at ($(B)+(-2,1)+(0,-1)$);
    \draw[red, thick] (Bminus) -- (Bplus) node[right] {$L_2$};
    
    % Mark points
    \filldraw ($(A)+(0.25,0.5)$) circle (2pt) node[right] {$A(2,-1)$};
    \filldraw ($(B)+(-0.25,-0.5)$) circle (2pt) node[right] {$B(6,7)$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 64 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 64 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 65
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  65,
  'English',
  'In the figure, $A(-2,-3)$ and $B(2,1)$ are points on the straight line $L_1$. The straight line $L_2$ passes through $B$, and $L_1 \perp L_2$. Find the equation of $L_2$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
     % Axes
    \draw[->] (-2, 0) -- (3, 0) node[right] {$x$};
    \draw[->] (0, -2) -- (0, 1) node[above] {$y$};
    
    % Define Points
    \coordinate (A) at (-2/2,-3/2);
    \coordinate (B) at (2/2,1/2);
    
    % Draw L1:
    \draw[blue, thick] (B) -- (A) node[below left] {$L_1$};
    
    % L2: m2 = -1.
    \coordinate (Bplus) at ($(B)+(1,-1)+(0,-1)$);
    \coordinate (Bminus) at ($(B)+(-1,1)+(0,-1)$);
    \draw[red, thick] (Bminus) -- (Bplus) node[right] {$L_2$};
    
    % Mark points
    \filldraw ($(A)+(0.25,0.25)$) circle (2pt) node[above left] {$A(-2,-3)$};
    \filldraw ($(B)+(-0.25,-0.25)$) circle (2pt) node[right] {$B(2,1)$};
\end{tikzpicture}}
\end{center}',
  'In the figure, $A(-2,-3)$ and $B(2,1)$ are points on the straight line $L_1$. The straight line $L_2$ passes through $B$, and $L_1 \perp L_2$. Find the equation of $L_2$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
     % Axes
    \draw[->] (-2, 0) -- (3, 0) node[right] {$x$};
    \draw[->] (0, -2) -- (0, 1) node[above] {$y$};
    
    % Define Points
    \coordinate (A) at (-2/2,-3/2);
    \coordinate (B) at (2/2,1/2);
    
    % Draw L1:
    \draw[blue, thick] (B) -- (A) node[below left] {$L_1$};
    
    % L2: m2 = -1.
    \coordinate (Bplus) at ($(B)+(1,-1)+(0,-1)$);
    \coordinate (Bminus) at ($(B)+(-1,1)+(0,-1)$);
    \draw[red, thick] (Bminus) -- (Bplus) node[right] {$L_2$};
    
    % Mark points
    \filldraw ($(A)+(0.25,0.25)$) circle (2pt) node[above left] {$A(-2,-3)$};
    \filldraw ($(B)+(-0.25,-0.25)$) circle (2pt) node[right] {$B(2,1)$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 65 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 65 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 66
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  66,
  'English',
  'The figure shows two parallel straight lines $L_1$ and $L_2: 3x-ky+12=0$. $L_1$ passes through $A(2,1)$ and $L_2$ cuts the $y$-axis at $B(0,4)$. Find the equation of $L_1$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Axes
    \draw[->] (-4/2,0) -- (8/2,0) node[right] {\(x\)};
    \draw[->] (0,-4/2) -- (0,8/2) node[above] {\(y\)};
    
    % Define points
    \coordinate (A) at (2/2,1/2);
    \coordinate (B) at (0,4/2);
    
    % Parameters
    \def\a{3} \def\C{12} \def\b{4}
    \pgfmathsetmacro{\k}{\C/\b} % k = 12/4 = 3
    \pgfmathsetmacro{\m}{\a/\k} % m = 3/3 = 1
    
    % L2: 3x - 3y +12= 0 => y = x + 4
    \draw[red, thick, domain=-2:4] 
    plot (\x/2, {\m*\x/2 + 4/2}) node[right] {\(L_2\)};
    
    % L1: Through A(2,1)
    \draw[blue, thick, domain=-2:4] 
    plot (\x/2, {\m*(\x-2)/2+1/2}) node[above right] {\(L_1\)};
    
    % Points
    \filldraw (A) circle (2pt) node[right] {\(A(2,1)\)};
    \filldraw (B) circle (2pt) node[left] {\(B(0,4)\)};
\end{tikzpicture}}
\end{center}',
  'The figure shows two parallel straight lines $L_1$ and $L_2: 3x-ky+12=0$. $L_1$ passes through $A(2,1)$ and $L_2$ cuts the $y$-axis at $B(0,4)$. Find the equation of $L_1$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Axes
    \draw[->] (-4/2,0) -- (8/2,0) node[right] {\(x\)};
    \draw[->] (0,-4/2) -- (0,8/2) node[above] {\(y\)};
    
    % Define points
    \coordinate (A) at (2/2,1/2);
    \coordinate (B) at (0,4/2);
    
    % Parameters
    \def\a{3} \def\C{12} \def\b{4}
    \pgfmathsetmacro{\k}{\C/\b} % k = 12/4 = 3
    \pgfmathsetmacro{\m}{\a/\k} % m = 3/3 = 1
    
    % L2: 3x - 3y +12= 0 => y = x + 4
    \draw[red, thick, domain=-2:4] 
    plot (\x/2, {\m*\x/2 + 4/2}) node[right] {\(L_2\)};
    
    % L1: Through A(2,1)
    \draw[blue, thick, domain=-2:4] 
    plot (\x/2, {\m*(\x-2)/2+1/2}) node[above right] {\(L_1\)};
    
    % Points
    \filldraw (A) circle (2pt) node[right] {\(A(2,1)\)};
    \filldraw (B) circle (2pt) node[left] {\(B(0,4)\)};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 66 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 66 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 67
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  67,
  'English',
  'The figure shows two parallel straight lines $L_1$ and $L_2: 8x-ky+32=0$. $L_1$ passes through $A(-4,1)$ and $L_2$ cuts the $y$-axis at $B(0,8)$. Find the equation of $L_1$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Axes
    \draw[->] (-8/2,0) -- (8/2-2,0) node[right] {\(x\)};
    \draw[->] (0,-2/2) -- (0,10/2) node[above] {\(y\)};
    
    % Points
    \coordinate (A) at (-4/2,1/2);
    \coordinate (B) at (0,8/2);
    
    % Parameters: a=8, C=32, b=8 so k=32/8=4; m=8/4=2.
    \def\a{8} \def\C{32} \def\b{8}
    \pgfmathsetmacro{\k}{\C/\b} 
    \pgfmathsetmacro{\m}{\a/\k} 
    
    % L2: 8x - 4y +32=0 => y = 2x+8.
    \draw[red, thick, domain=-5:1] 
    plot (\x/2, {\m*\x/2 + 8/2}) node[right] {\(L_2\)};
    
    % L1: Through A(-4,1)
    \draw[blue, thick, domain=-5:1] 
    plot (\x/2, {\m*(\x+4)/2+1/2}) node[above right] {\(L_1\)};
    
    % Points
    \filldraw (A) circle (2pt) node[above left] {\(A(-4,1)\)};
    \filldraw (B) circle (2pt) node[right] {\(B(0,8)\)};
\end{tikzpicture}}
\end{center}',
  'The figure shows two parallel straight lines $L_1$ and $L_2: 8x-ky+32=0$. $L_1$ passes through $A(-4,1)$ and $L_2$ cuts the $y$-axis at $B(0,8)$. Find the equation of $L_1$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Axes
    \draw[->] (-8/2,0) -- (8/2-2,0) node[right] {\(x\)};
    \draw[->] (0,-2/2) -- (0,10/2) node[above] {\(y\)};
    
    % Points
    \coordinate (A) at (-4/2,1/2);
    \coordinate (B) at (0,8/2);
    
    % Parameters: a=8, C=32, b=8 so k=32/8=4; m=8/4=2.
    \def\a{8} \def\C{32} \def\b{8}
    \pgfmathsetmacro{\k}{\C/\b} 
    \pgfmathsetmacro{\m}{\a/\k} 
    
    % L2: 8x - 4y +32=0 => y = 2x+8.
    \draw[red, thick, domain=-5:1] 
    plot (\x/2, {\m*\x/2 + 8/2}) node[right] {\(L_2\)};
    
    % L1: Through A(-4,1)
    \draw[blue, thick, domain=-5:1] 
    plot (\x/2, {\m*(\x+4)/2+1/2}) node[above right] {\(L_1\)};
    
    % Points
    \filldraw (A) circle (2pt) node[above left] {\(A(-4,1)\)};
    \filldraw (B) circle (2pt) node[right] {\(B(0,8)\)};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 67 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 67 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 68
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  68,
  'English',
  'The figure shows two parallel straight lines $L_1$ and $L_2: 3x-ky+18=0$. $L_1$ passes through $A(5,3)$ and $L_2$ cuts the $y$-axis at $B(0,3)$. Find the equation of $L_1$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Axes
    \draw[->] (-2/2,0) -- (8/2,0) node[right] {\(x\)};
    \draw[->] (0,-5/2) -- (0,8/2) node[above] {\(y\)};
    
    % Points
    \coordinate (A) at (5/2,3/2);
    \coordinate (B) at (0,3/2);
    
    % Parameters: a=3, C=18, b=6 so k=18/6=3; m=3/3=1.
    \def\a{3} \def\C{18} \def\b{6}
    \pgfmathsetmacro{\k}{\C/\b} 
    \pgfmathsetmacro{\m}{\a/\k} 
    
    % L2: 3x - 3y +18=0 => y = x+6.
    \draw[red, thick, domain=-1:6] 
    plot (\x/2, {\m*\x/2 + 3/2}) node[right] {\(L_2\)};
    
    % L1: Through A(5,-3)
    \draw[blue, thick, domain=-1:6] 
    plot (\x/2, {\m*(\x-5)/2+3/2}) node[above right] {\(L_1\)};
    
    % Mark points
    \filldraw (A) circle (2pt) node[below right] {\(A(5,3)\)};
    \filldraw (B) circle (2pt) node[above left] {\(B(0,3)\)};
\end{tikzpicture}}
\end{center}',
  'The figure shows two parallel straight lines $L_1$ and $L_2: 3x-ky+18=0$. $L_1$ passes through $A(5,3)$ and $L_2$ cuts the $y$-axis at $B(0,3)$. Find the equation of $L_1$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Axes
    \draw[->] (-2/2,0) -- (8/2,0) node[right] {\(x\)};
    \draw[->] (0,-5/2) -- (0,8/2) node[above] {\(y\)};
    
    % Points
    \coordinate (A) at (5/2,3/2);
    \coordinate (B) at (0,3/2);
    
    % Parameters: a=3, C=18, b=6 so k=18/6=3; m=3/3=1.
    \def\a{3} \def\C{18} \def\b{6}
    \pgfmathsetmacro{\k}{\C/\b} 
    \pgfmathsetmacro{\m}{\a/\k} 
    
    % L2: 3x - 3y +18=0 => y = x+6.
    \draw[red, thick, domain=-1:6] 
    plot (\x/2, {\m*\x/2 + 3/2}) node[right] {\(L_2\)};
    
    % L1: Through A(5,-3)
    \draw[blue, thick, domain=-1:6] 
    plot (\x/2, {\m*(\x-5)/2+3/2}) node[above right] {\(L_1\)};
    
    % Mark points
    \filldraw (A) circle (2pt) node[below right] {\(A(5,3)\)};
    \filldraw (B) circle (2pt) node[above left] {\(B(0,3)\)};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 68 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 68 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 69
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  69,
  'English',
  'The figure shows two parallel straight lines $L_1$ and $L_2: 9x-ky+27=0$. $L_1$ passes through $A(-1,-6)$ and $L_2$ cuts the $y$-axis at $B(0,9)$. Find the equation of $L_1$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Axes
    \draw[->] (-5/3,0) -- (8/3,0) node[right] {\(x\)};
    \draw[->] (0,-8/3) -- (0,8/3+2) node[above] {\(y\)};
    
    % Points
    \coordinate (A) at (-1/3,-6/3);
    \coordinate (B) at (0,9/3);
    
    % Parameters: a=9, C=27, b=9 so k=27/9=3; m=9/3=3.
    \def\a{9} \def\C{27} \def\b{9}
    \pgfmathsetmacro{\k}{\C/\b} 
    \pgfmathsetmacro{\m}{\a/\k} 
    
    % L2: 9x - 3y +27=0 => y=3x+9.
    \draw[red, thick, domain=-2:1] 
    plot (\x/3, {\m*\x/3 + 9/3}) node[right] {\(L_2\)};
    
    % L1: Through A(-1,-6)
    \draw[blue, thick, domain=-2:2] 
    plot (\x/3, {\m*(\x+1)/3-6/3}) node[above right] {\(L_1\)};
    
    % Mark points
    \filldraw (A) circle (2pt) node[left] {\(A(-1,-6)\)};
    \filldraw (B) circle (2pt) node[right] {\(B(0,9)\)};
\end{tikzpicture}}
\end{center}',
  'The figure shows two parallel straight lines $L_1$ and $L_2: 9x-ky+27=0$. $L_1$ passes through $A(-1,-6)$ and $L_2$ cuts the $y$-axis at $B(0,9)$. Find the equation of $L_1$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Axes
    \draw[->] (-5/3,0) -- (8/3,0) node[right] {\(x\)};
    \draw[->] (0,-8/3) -- (0,8/3+2) node[above] {\(y\)};
    
    % Points
    \coordinate (A) at (-1/3,-6/3);
    \coordinate (B) at (0,9/3);
    
    % Parameters: a=9, C=27, b=9 so k=27/9=3; m=9/3=3.
    \def\a{9} \def\C{27} \def\b{9}
    \pgfmathsetmacro{\k}{\C/\b} 
    \pgfmathsetmacro{\m}{\a/\k} 
    
    % L2: 9x - 3y +27=0 => y=3x+9.
    \draw[red, thick, domain=-2:1] 
    plot (\x/3, {\m*\x/3 + 9/3}) node[right] {\(L_2\)};
    
    % L1: Through A(-1,-6)
    \draw[blue, thick, domain=-2:2] 
    plot (\x/3, {\m*(\x+1)/3-6/3}) node[above right] {\(L_1\)};
    
    % Mark points
    \filldraw (A) circle (2pt) node[left] {\(A(-1,-6)\)};
    \filldraw (B) circle (2pt) node[right] {\(B(0,9)\)};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 69 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 69 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 70
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  70,
  'English',
  'The figure shows two parallel straight lines $L_1$ and $L_2: 4x-ky+16=0$. $L_1$ passes through $A(2,3)$ and $L_2$ cuts the $y$-axis at $B(0,4)$. Find the equation of $L_1$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Axes
    \draw[->] (-1,0) -- (5,0) node[right] {\(x\)};
    \draw[->] (0,-2/2) -- (0,10/2) node[above] {\(y\)};
    
    % Points
    \coordinate (A) at (2,3/2);
    \coordinate (B) at (0,4/2);
    
    % Parameters: a=4, C=16, b=8 so k=16/8=2; m=4/2=2.
    \def\a{4} \def\C{16} \def\b{8}
    \pgfmathsetmacro{\k}{\C/\b}
    \pgfmathsetmacro{\m}{\a/\k}
    
    % L2: 4x - 2y +16=0 => y = 2x+8.
    \draw[red, thick, domain=-1:3] 
    plot (\x, {\m*\x/2 + 4/2}) node[right] {\(L_2\)};
    
    % L1: Through A(2,3)
    \draw[blue, thick, domain=-1:3] 
    plot (\x, {\m*(\x-2)/2+3/2}) node[above right] {\(L_1\)};
    
    % Mark points
    \filldraw (A) circle (2pt) node[right] {\(A(2,3)\)};
    \filldraw (B) circle (2pt) node[left] {\(B(0,4)\)};
    \end{tikzpicture}}
\end{center}',
  'The figure shows two parallel straight lines $L_1$ and $L_2: 4x-ky+16=0$. $L_1$ passes through $A(2,3)$ and $L_2$ cuts the $y$-axis at $B(0,4)$. Find the equation of $L_1$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Axes
    \draw[->] (-1,0) -- (5,0) node[right] {\(x\)};
    \draw[->] (0,-2/2) -- (0,10/2) node[above] {\(y\)};
    
    % Points
    \coordinate (A) at (2,3/2);
    \coordinate (B) at (0,4/2);
    
    % Parameters: a=4, C=16, b=8 so k=16/8=2; m=4/2=2.
    \def\a{4} \def\C{16} \def\b{8}
    \pgfmathsetmacro{\k}{\C/\b}
    \pgfmathsetmacro{\m}{\a/\k}
    
    % L2: 4x - 2y +16=0 => y = 2x+8.
    \draw[red, thick, domain=-1:3] 
    plot (\x, {\m*\x/2 + 4/2}) node[right] {\(L_2\)};
    
    % L1: Through A(2,3)
    \draw[blue, thick, domain=-1:3] 
    plot (\x, {\m*(\x-2)/2+3/2}) node[above right] {\(L_1\)};
    
    % Mark points
    \filldraw (A) circle (2pt) node[right] {\(A(2,3)\)};
    \filldraw (B) circle (2pt) node[left] {\(B(0,4)\)};
    \end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 70 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 70 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 71
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  71,
  'English',
  'It is given that $L_1$ has the slope $3$ and the $y$-intercept $1$. Find the coordinates of the intersection of $L_1$ and $L_2:y=-2x+7$.',
  'It is given that $L_1$ has the slope $3$ and the $y$-intercept $1$. Find the coordinates of the intersection of $L_1$ and $L_2:y=-2x+7$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 71 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 71 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 72
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  72,
  'English',
  'It is given that $L_1$ has the slope $-1$ and the $y$-intercept $5$. Find the coordinates of the intersection of $L_1$ and $L_2:y=2x-1$.',
  'It is given that $L_1$ has the slope $-1$ and the $y$-intercept $5$. Find the coordinates of the intersection of $L_1$ and $L_2:y=2x-1$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 72 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 72 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 73
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  73,
  'English',
  'It is given that $L_1$ has the slope $4$ and the $y$-intercept $-3$. Find the coordinates of the intersection of $L_1$ and $\displaystyle L_2:y=-\frac{1}{2}x+6$.',
  'It is given that $L_1$ has the slope $4$ and the $y$-intercept $-3$. Find the coordinates of the intersection of $L_1$ and $\displaystyle L_2:y=-\frac{1}{2}x+6$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 73 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 73 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 74
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  74,
  'English',
  'It is given that $L_1$ has the slope $-2$ and the $y$-intercept $6$. Find the coordinates of the intersection of $L_1$ and $L_2:y=x-1$.',
  'It is given that $L_1$ has the slope $-2$ and the $y$-intercept $6$. Find the coordinates of the intersection of $L_1$ and $L_2:y=x-1$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 74 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 74 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 75
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  75,
  'English',
  'It is given that $L_1$ has the slope $1$ and the $y$-intercept $-3$. Find the coordinates of the intersection of $L_1$ and $L_2:y=-x+7$.',
  'It is given that $L_1$ has the slope $1$ and the $y$-intercept $-3$. Find the coordinates of the intersection of $L_1$ and $L_2:y=-x+7$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 75 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 75 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 76
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  76,
  'English',
  'It is given that $L_1$ has the slope $3$ and passes through the point $A(-1,4)$. Find the coordinates of the intersection of $L_1$ and $L_2:2x+y=1$.',
  'It is given that $L_1$ has the slope $3$ and passes through the point $A(-1,4)$. Find the coordinates of the intersection of $L_1$ and $L_2:2x+y=1$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 76 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 76 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 77
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  77,
  'English',
  'It is given that $L_1$ has the slope $-1$ and passes through the point $A(5,0)$. Find the coordinates of the intersection of $L_1$ and $L_2:3x+2y=20$.',
  'It is given that $L_1$ has the slope $-1$ and passes through the point $A(5,0)$. Find the coordinates of the intersection of $L_1$ and $L_2:3x+2y=20$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 77 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 77 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 78
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  78,
  'English',
  'It is given that $L_1$ has the slope $1$ and passes through the point $A(3,-1)$. Find the coordinates of the intersection of $L_1$ and $L_2:7x+2y=10$.',
  'It is given that $L_1$ has the slope $1$ and passes through the point $A(3,-1)$. Find the coordinates of the intersection of $L_1$ and $L_2:7x+2y=10$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 78 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 78 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 79
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  79,
  'English',
  'It is given that $L_1$ has the slope $2$ and passes through the point $A(-4,-1)$. Find the coordinates of the intersection of $L_1$ and $L_2:3x-y=-5$.',
  'It is given that $L_1$ has the slope $2$ and passes through the point $A(-4,-1)$. Find the coordinates of the intersection of $L_1$ and $L_2:3x-y=-5$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 79 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 79 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 80
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  80,
  'English',
  'It is given that $L_1$ has the slope $-1$ and passes through the point $A(2,3)$. Find the coordinates of the intersection of $L_1$ and $L_2:2x+3y=11$.',
  'It is given that $L_1$ has the slope $-1$ and passes through the point $A(2,3)$. Find the coordinates of the intersection of $L_1$ and $L_2:2x+3y=11$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 80 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 80 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 81
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  81,
  'English',
  'It is given that $L_1$ passes through the point $A(-3,0)$ and $B(1,8)$. Find the coordinates of the intersection of $L_1$ and $L_2:x-y=-6$.',
  'It is given that $L_1$ passes through the point $A(-3,0)$ and $B(1,8)$. Find the coordinates of the intersection of $L_1$ and $L_2:x-y=-6$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 81 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 81 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 82
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  82,
  'English',
  'It is given that $L_1$ passes through the point $A(2,1)$ and $B(6,5)$. Find the coordinates of the intersection of $L_1$ and $L_2:x+y-7=0$.',
  'It is given that $L_1$ passes through the point $A(2,1)$ and $B(6,5)$. Find the coordinates of the intersection of $L_1$ and $L_2:x+y-7=0$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 82 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 82 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 83
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  83,
  'English',
  'It is given that $L_1$ passes through the point $A(3,-1)$ and $B(7,3)$. Find the coordinates of the intersection of $L_1$ and $L_2:x-2y=8$.',
  'It is given that $L_1$ passes through the point $A(3,-1)$ and $B(7,3)$. Find the coordinates of the intersection of $L_1$ and $L_2:x-2y=8$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 83 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 83 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 84
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  84,
  'English',
  'It is given that $L_1$ passes through the point $A(-4,5)$ and $B(0,-3)$. Find the coordinates of the intersection of $L_1$ and $L_2:3x+y=1$.',
  'It is given that $L_1$ passes through the point $A(-4,5)$ and $B(0,-3)$. Find the coordinates of the intersection of $L_1$ and $L_2:3x+y=1$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 84 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 84 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 85
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  85,
  'English',
  'It is given that $L_1$ passes through the point $A(0,-3)$ and $B(12,5)$. Find the coordinates of the intersection of $L_1$ and $L_2:x-y=10$.',
  'It is given that $L_1$ passes through the point $A(0,-3)$ and $B(12,5)$. Find the coordinates of the intersection of $L_1$ and $L_2:x-y=10$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 85 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 85 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 86
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  86,
  'English',
  'It is given that $L_1$ is perpendicular to $L_2:3x+4y=12$ and passes through the point $A(1,2)$. Find the coordinates of the intersection of $L_1$ and $L_2$.',
  'It is given that $L_1$ is perpendicular to $L_2:3x+4y=12$ and passes through the point $A(1,2)$. Find the coordinates of the intersection of $L_1$ and $L_2$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 86 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 86 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 87
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  87,
  'English',
  'It is given that $L_1$ is perpendicular to $L_2:-x+y+10=0$ and passes through the point $A(5,-2)$. Find the coordinates of the intersection of $L_1$ and $L_2$.',
  'It is given that $L_1$ is perpendicular to $L_2:-x+y+10=0$ and passes through the point $A(5,-2)$. Find the coordinates of the intersection of $L_1$ and $L_2$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 87 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 87 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 88
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  88,
  'English',
  'It is given that $L_1$ is perpendicular to $L_2:-3x+y=8$ and passes through the point $A(2,-1)$. Find the coordinates of the intersection of $L_1$ and $L_2$.',
  'It is given that $L_1$ is perpendicular to $L_2:-3x+y=8$ and passes through the point $A(2,-1)$. Find the coordinates of the intersection of $L_1$ and $L_2$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 88 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 88 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 89
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  89,
  'English',
  'It is given that $L_1$ is perpendicular to $L_2:x-y+6=0$ and passes through the point $A(-2,3)$. Find the coordinates of the intersection of $L_1$ and $L_2$.',
  'It is given that $L_1$ is perpendicular to $L_2:x-y+6=0$ and passes through the point $A(-2,3)$. Find the coordinates of the intersection of $L_1$ and $L_2$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 89 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 89 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 90
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  90,
  'English',
  'It is given that $L_1$ is perpendicular to $L_2:2x+y+3=0$ and passes through the point $A(-3,2)$. Find the coordinates of the intersection of $L_1$ and $L_2$.',
  'It is given that $L_1$ is perpendicular to $L_2:2x+y+3=0$ and passes through the point $A(-3,2)$. Find the coordinates of the intersection of $L_1$ and $L_2$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 90 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 90 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 91
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  91,
  'English',
  '$A(1,3)$ and $B(5,11)$ are points on the rectangular coordinate plane. Find the equation of the perpendicular bisector of $AB$.',
  '$A(1,3)$ and $B(5,11)$ are points on the rectangular coordinate plane. Find the equation of the perpendicular bisector of $AB$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 91 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 91 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 92
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  92,
  'English',
  '$A(-4,-3)$ and $B(2,5)$ are points on the rectangular coordinate plane. Find the equation of the perpendicular bisector of $AB$.',
  '$A(-4,-3)$ and $B(2,5)$ are points on the rectangular coordinate plane. Find the equation of the perpendicular bisector of $AB$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 92 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 92 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 93
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  93,
  'English',
  '$A(0,0)$ and $B(6,8)$ are points on the rectangular coordinate plane. Find the equation of the perpendicular bisector of $AB$.',
  '$A(0,0)$ and $B(6,8)$ are points on the rectangular coordinate plane. Find the equation of the perpendicular bisector of $AB$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 93 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 93 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 94
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  94,
  'English',
  '$A(3,-5)$ and $B(9,1)$ are points on the rectangular coordinate plane. Find the equation of the perpendicular bisector of $AB$.',
  '$A(3,-5)$ and $B(9,1)$ are points on the rectangular coordinate plane. Find the equation of the perpendicular bisector of $AB$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 94 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 94 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 95
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  95,
  'English',
  '$A(-3,4)$ and $B(1,-2)$ are points on the rectangular coordinate plane. Find the equation of the perpendicular bisector of $AB$.',
  '$A(-3,4)$ and $B(1,-2)$ are points on the rectangular coordinate plane. Find the equation of the perpendicular bisector of $AB$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 95 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 95 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 96
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  96,
  'English',
  '$A(-2,5)$, $B(1,1)$ and $C(5,-3)$ are three points on the rectangular coordinate plane. $AD$ is the altitude of $BC$ in $\triangle ABC$. Find the coordinates of $D$.',
  '$A(-2,5)$, $B(1,1)$ and $C(5,-3)$ are three points on the rectangular coordinate plane. $AD$ is the altitude of $BC$ in $\triangle ABC$. Find the coordinates of $D$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 96 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 96 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 97
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  97,
  'English',
  '$A(3,1)$, $B(2,6)$ and $C(8,4)$ are three points on the rectangular coordinate plane. $AD$ is the altitude of $BC$ in $\triangle ABC$. Find the coordinates of $D$.',
  '$A(3,1)$, $B(2,6)$ and $C(8,4)$ are three points on the rectangular coordinate plane. $AD$ is the altitude of $BC$ in $\triangle ABC$. Find the coordinates of $D$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 97 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 97 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 98
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  98,
  'English',
  '$A(-4,3)$, $B(2,-1)$ and $C(6,5)$ are three points on the rectangular coordinate plane. $AD$ is the altitude of $BC$ in $\triangle ABC$. Find the coordinates of $D$.',
  '$A(-4,3)$, $B(2,-1)$ and $C(6,5)$ are three points on the rectangular coordinate plane. $AD$ is the altitude of $BC$ in $\triangle ABC$. Find the coordinates of $D$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 98 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 98 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 99
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  99,
  'English',
  '$A(3,-6)$, $B(0,0)$ and $C(6,-2)$ are three points on the rectangular coordinate plane. $AD$ is the altitude of $BC$ in $\triangle ABC$. Find the coordinates of $D$.',
  '$A(3,-6)$, $B(0,0)$ and $C(6,-2)$ are three points on the rectangular coordinate plane. $AD$ is the altitude of $BC$ in $\triangle ABC$. Find the coordinates of $D$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 99 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 99 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 100
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines'),
  100,
  'English',
  '$A(-1,-1)$, $B(2,3)$ and $C(6,0)$ are three points on the rectangular coordinate plane. $AD$ is the altitude of $BC$ in $\triangle ABC$. Find the coordinates of $D$.',
  '$A(-1,-1)$, $B(2,3)$ and $C(6,0)$ are three points on the rectangular coordinate plane. $AD$ is the altitude of $BC$ in $\triangle ABC$. Find the coordinates of $D$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 100 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'EquationsOfStraightLines')
   AND question_number = 100 AND language = 'English'),
  '\begin{flalign*}
    
\end{flalign*}',
  '\begin{flalign*}
    
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入主题: Functions And Graphs
INSERT INTO topics (name, display_name, chapter)
VALUES ('FunctionsAndGraphs', 'Functions And Graphs', 'Compulsory Part Ch.1-4')
ON CONFLICT (name) DO NOTHING;

-- 插入英文问题 1
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  1,
  'English',
  'Find the domain of the function $y=x(x-2)$.',
  'Find the domain of the function $y=x(x-2)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 1 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 1 AND language = 'English'),
  'The domain of the function is all real numbers.',
  'The domain of the function is all real numbers.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 2
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  2,
  'English',
  'Find the domain of the function $y=\sqrt{2-3x}$.',
  'Find the domain of the function $y=\sqrt{2-3x}$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 2 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 2 AND language = 'English'),
  'As the number in the square root cannot be negative, we need to solve $2-3x\geq 0$, we get $\displaystyle x\leq \frac{3}{2}$. \\
Therefore, the domain of the function is $\displaystyle x\leq \frac{3}{2}$.',
  'As the number in the square root cannot be negative, we need to solve $2-3x\geq 0$, we get $\displaystyle x\leq \frac{3}{2}$. \\
Therefore, the domain of the function is $\displaystyle x\leq \frac{3}{2}$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 3
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  3,
  'English',
  'Find the domain of the function $y=\sqrt{x+3}$.',
  'Find the domain of the function $y=\sqrt{x+3}$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 3 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 3 AND language = 'English'),
  'As the number in the square root cannot be negative, we need to solve $x+3\geq 0$, we get $x\geq -3$. \\
Therefore, the domain of the function is $x\geq -3$.',
  'As the number in the square root cannot be negative, we need to solve $x+3\geq 0$, we get $x\geq -3$. \\
Therefore, the domain of the function is $x\geq -3$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 4
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  4,
  'English',
  'Find the domain of the function $\displaystyle y=\frac{1}{x^2-1}$.',
  'Find the domain of the function $\displaystyle y=\frac{1}{x^2-1}$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 4 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 4 AND language = 'English'),
  'As the denominator cannot be equal to 0, we solve $x^2-1\ne 0$, we get $x\ne 1$ or $-1$. \\
Therefore, the domain of the function is all real numbers except $x=1$ and $x=-1$.',
  'As the denominator cannot be equal to 0, we solve $x^2-1\ne 0$, we get $x\ne 1$ or $-1$. \\
Therefore, the domain of the function is all real numbers except $x=1$ and $x=-1$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 5
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  5,
  'English',
  'Find the domain of the function $\displaystyle y=\sqrt{\frac{1}{x+1}}$.',
  'Find the domain of the function $\displaystyle y=\sqrt{\frac{1}{x+1}}$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 5 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 5 AND language = 'English'),
  'As the denominator cannot be equal to 0, we solve $x+1\ne 0$, we get $x\ne -1$. \\
Moreover, the number under the square root cannot be negative, we solve $\displaystyle \frac{1}{x+1}\geq 0$, we get $x\geq -1$. \\
Combine the two conditions, we get the domain of the function is $x>-1$.',
  'As the denominator cannot be equal to 0, we solve $x+1\ne 0$, we get $x\ne -1$. \\
Moreover, the number under the square root cannot be negative, we solve $\displaystyle \frac{1}{x+1}\geq 0$, we get $x\geq -1$. \\
Combine the two conditions, we get the domain of the function is $x>-1$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 6
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  6,
  'English',
  'If $f(x)=ax^2+bx$, $f(1)=3$ and $f(-1)=-1$, find the value of $f(2)$.',
  'If $f(x)=ax^2+bx$, $f(1)=3$ and $f(-1)=-1$, find the value of $f(2)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 6 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 6 AND language = 'English'),
  '\begin{flalign}
    f(1)&=3 \nonumber \\
    a+b&=3 \tag{1} \\
    \nonumber \\
    f(-1)&=-1 \nonumber \\
    a-b&=-1 \tag{2}
\end{flalign}
Solving the equations, we have $a=1$ and $b=2$.\\
Therefore, $f(2)=(1)(2)^2+(2)(2)=8$.',
  '\begin{flalign}
    f(1)&=3 \nonumber \\
    a+b&=3 \tag{1} \\
    \nonumber \\
    f(-1)&=-1 \nonumber \\
    a-b&=-1 \tag{2}
\end{flalign}
Solving the equations, we have $a=1$ and $b=2$.\\
Therefore, $f(2)=(1)(2)^2+(2)(2)=8$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 7
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  7,
  'English',
  'If $f(x)=k(x-2)^2+4$ and $f(0)=20$, find the value of $f(4)$.',
  'If $f(x)=k(x-2)^2+4$ and $f(0)=20$, find the value of $f(4)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 7 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 7 AND language = 'English'),
  '\begin{flalign*}
    f(0)&=20\\
    k(0-2)^2+4&=20\\
    4k+4&=20\\
    4k&=16\\
    k&=4
\end{flalign*}
Therefore, $f(4)=4(4-2)^2+4=20$.',
  '\begin{flalign*}
    f(0)&=20\\
    k(0-2)^2+4&=20\\
    4k+4&=20\\
    4k&=16\\
    k&=4
\end{flalign*}
Therefore, $f(4)=4(4-2)^2+4=20$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 8
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  8,
  'English',
  'If $f(x)=kx^2+4$ and $f(1)=9$, find the value of $f(-1)$.',
  'If $f(x)=kx^2+4$ and $f(1)=9$, find the value of $f(-1)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 8 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 8 AND language = 'English'),
  '\begin{flalign*}
    f(1)&=9\\
    k(1)^2+4&=9\\
    k+4&=9\\
    k&=5
\end{flalign*}
Therefore, $f(-1)=(5)(-1)^2+4=9$.',
  '\begin{flalign*}
    f(1)&=9\\
    k(1)^2+4&=9\\
    k+4&=9\\
    k&=5
\end{flalign*}
Therefore, $f(-1)=(5)(-1)^2+4=9$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 9
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  9,
  'English',
  'If $f(x)=k(x+1)^2-5$ and $f(2)=4$, find the value of $f(-3)$.',
  'If $f(x)=k(x+1)^2-5$ and $f(2)=4$, find the value of $f(-3)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 9 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 9 AND language = 'English'),
  '\begin{flalign*}
    f(2)&=4\\
    k(2+1)^2-5&=4\\
    9k-5&=4\\
    9k&=9\\
    k&=1
\end{flalign*}
Therefore, $f(-3)=(1)(-3+1)^2-5=-1$.',
  '\begin{flalign*}
    f(2)&=4\\
    k(2+1)^2-5&=4\\
    9k-5&=4\\
    9k&=9\\
    k&=1
\end{flalign*}
Therefore, $f(-3)=(1)(-3+1)^2-5=-1$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 10
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  10,
  'English',
  'If $f(x)=3x^2+kx+2$ and $f(1)=8$, find the value of $f(-1)$.',
  'If $f(x)=3x^2+kx+2$ and $f(1)=8$, find the value of $f(-1)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 10 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 10 AND language = 'English'),
  '\begin{flalign*}
    f(1)&=8\\
    3(1)^2+k(1)+2&=8\\
    3+k+2&=8\\
    k&=3
\end{flalign*}
Therefore, $f(-1)=3(-1)^2+(3)(-1)+2=2$.',
  '\begin{flalign*}
    f(1)&=8\\
    3(1)^2+k(1)+2&=8\\
    3+k+2&=8\\
    k&=3
\end{flalign*}
Therefore, $f(-1)=3(-1)^2+(3)(-1)+2=2$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 11
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  11,
  'English',
  'If $f(x)=x^2+4x+3$ and $f(k)=0$, find the value(s) of $k$.',
  'If $f(x)=x^2+4x+3$ and $f(k)=0$, find the value(s) of $k$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 11 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 11 AND language = 'English'),
  '\begin{flalign*}
    f(k)&=0\\
    k^2+4k+3&=0\\
    (k+1)(k+3)&=0\\
    k&=-1\text{ or }-3
\end{flalign*}',
  '\begin{flalign*}
    f(k)&=0\\
    k^2+4k+3&=0\\
    (k+1)(k+3)&=0\\
    k&=-1\text{ or }-3
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 12
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  12,
  'English',
  'If $f(x)=x^2-6x+9$ and $f(k)=16$, find the value(s) of $k$.',
  'If $f(x)=x^2-6x+9$ and $f(k)=16$, find the value(s) of $k$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 12 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 12 AND language = 'English'),
  '\begin{flalign*}
    f(k)&=16\\
    k^2-6k+9&=16\\
    k^2-6k-7&=0\\
    (k-7)(k+1)&=0\\
    k&=7\text{ or }-1
\end{flalign*}',
  '\begin{flalign*}
    f(k)&=16\\
    k^2-6k+9&=16\\
    k^2-6k-7&=0\\
    (k-7)(k+1)&=0\\
    k&=7\text{ or }-1
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 13
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  13,
  'English',
  'If $f(x)=\sqrt{x+6}$ and $f(k)=3$, find the value(s) of $k$.',
  'If $f(x)=\sqrt{x+6}$ and $f(k)=3$, find the value(s) of $k$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 13 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 13 AND language = 'English'),
  '\begin{flalign*}
    f(k)&=3\\
    \sqrt{k+6}&=3\\
    k+6&=3^2\\
    k+6&=9\\
    k&=3
\end{flalign*}',
  '\begin{flalign*}
    f(k)&=3\\
    \sqrt{k+6}&=3\\
    k+6&=3^2\\
    k+6&=9\\
    k&=3
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 14
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  14,
  'English',
  'If $\displaystyle f(x)=\frac{2x+3}{x-1}$ and $f(3k)=5$, find the value(s) of $k$.',
  'If $\displaystyle f(x)=\frac{2x+3}{x-1}$ and $f(3k)=5$, find the value(s) of $k$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 14 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 14 AND language = 'English'),
  '\begin{flalign*}
    f(3k)&=5\\
    \frac{2(3k)+3}{3k-1}&=5\\
    6k+3&=5(3k-1)\\
    6k+3&=15k-5\\
    9k&=8\\
    k&=\frac{8}{9}
\end{flalign*}',
  '\begin{flalign*}
    f(3k)&=5\\
    \frac{2(3k)+3}{3k-1}&=5\\
    6k+3&=5(3k-1)\\
    6k+3&=15k-5\\
    9k&=8\\
    k&=\frac{8}{9}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 15
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  15,
  'English',
  'If $f(x)=\log_2(x-1)$ and $f(k)=3$, find the value(s) of $k$.',
  'If $f(x)=\log_2(x-1)$ and $f(k)=3$, find the value(s) of $k$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 15 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 15 AND language = 'English'),
  '\begin{flalign*}
    f(k)&=3\\
    \log_2{(k-1)}&=3\\
    k-1&=2^3\\
    k-1&=8\\
    k&=9
\end{flalign*}',
  '\begin{flalign*}
    f(k)&=3\\
    \log_2{(k-1)}&=3\\
    k-1&=2^3\\
    k-1&=8\\
    k&=9
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 16
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  16,
  'English',
  'If $f(x)=x^2-3kx+2$ and $f(k+1)=f(-k)$, find the value(s) of $k$.',
  'If $f(x)=x^2-3kx+2$ and $f(k+1)=f(-k)$, find the value(s) of $k$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 16 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 16 AND language = 'English'),
  '\begin{flalign*}
    f(k+1)&=f(-k)\\
    (k+1)^2-3k(k+1)+2&=(-k)^2-3k(-k)+2\\
    k^2+2k+1-3k^2-3k+2&=k^2+3k^2+2\\
    -2k^2-k+3&=4k^2+2\\
    6k^2+k-1&=0\\
    (3k-1)(2k+1)&=0\\
    k&=\frac{1}{3}\text{ or }-\frac{1}{2}
\end{flalign*}',
  '\begin{flalign*}
    f(k+1)&=f(-k)\\
    (k+1)^2-3k(k+1)+2&=(-k)^2-3k(-k)+2\\
    k^2+2k+1-3k^2-3k+2&=k^2+3k^2+2\\
    -2k^2-k+3&=4k^2+2\\
    6k^2+k-1&=0\\
    (3k-1)(2k+1)&=0\\
    k&=\frac{1}{3}\text{ or }-\frac{1}{2}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 17
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  17,
  'English',
  'If $f(x)=x^2+2kx+8$ and $f(k)=f(-k)$, find the value(s) of $k$.',
  'If $f(x)=x^2+2kx+8$ and $f(k)=f(-k)$, find the value(s) of $k$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 17 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 17 AND language = 'English'),
  '\begin{flalign*}
    f(k)&=f(-k)\\
    k^2+2k(k)+8&=(-k)^2+2k(-k)+8\\
    k^2+2k^2+8&=k^2-2k^2+8\\
    3k^2+8&=-k^2+8\\
    4k^2&=0\\
    k&=0
\end{flalign*}',
  '\begin{flalign*}
    f(k)&=f(-k)\\
    k^2+2k(k)+8&=(-k)^2+2k(-k)+8\\
    k^2+2k^2+8&=k^2-2k^2+8\\
    3k^2+8&=-k^2+8\\
    4k^2&=0\\
    k&=0
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 18
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  18,
  'English',
  'If $f(x)=2x^2-kx+4$ and $f(k)=f(0)$, find the value(s) of $k$.',
  'If $f(x)=2x^2-kx+4$ and $f(k)=f(0)$, find the value(s) of $k$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 18 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 18 AND language = 'English'),
  '\begin{flalign*}
    f(k)&=f(0)\\
    2k^2-k(k)+4&=2(0)^2-k(0)+4\\
    2k^2-k^2+4&=4\\
    k^2&=0\\
    k&=0
\end{flalign*}',
  '\begin{flalign*}
    f(k)&=f(0)\\
    2k^2-k(k)+4&=2(0)^2-k(0)+4\\
    2k^2-k^2+4&=4\\
    k^2&=0\\
    k&=0
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 19
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  19,
  'English',
  'If $f(x)=x^2-2x+k$ and $f(k)=f(3)$, find the value(s) of $k$.',
  'If $f(x)=x^2-2x+k$ and $f(k)=f(3)$, find the value(s) of $k$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 19 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 19 AND language = 'English'),
  '\begin{flalign*}
    f(k)&=f(3)\\
    k^2-2k+k&=3^2-2(3)+k\\
    k^2-k&=9-6+k\\
    k^2-2k-3&=0\\
    (k-3)(k+1)&=0\\
    k&=3\text{ or }-1
\end{flalign*}',
  '\begin{flalign*}
    f(k)&=f(3)\\
    k^2-2k+k&=3^2-2(3)+k\\
    k^2-k&=9-6+k\\
    k^2-2k-3&=0\\
    (k-3)(k+1)&=0\\
    k&=3\text{ or }-1
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 20
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  20,
  'English',
  'If $f(x)=x^2+kx+3k$ and $f(k)=f(2)$, find the value(s) of $k$.',
  'If $f(x)=x^2+kx+3k$ and $f(k)=f(2)$, find the value(s) of $k$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 20 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 20 AND language = 'English'),
  '\begin{flalign*}
    f(k)&=f(2)\\
    k^2+k(k)+3k&=2^2+k(2)+3k\\
    k^2+k^2+3k&=4+2k+3k\\
    2k^2+3k&=5k+4\\
    2k^2-2k-4&=0\\
    k^2-k-2&=0\\
    (k-2)(k+1)&=0\\
    k&=2\text{ or }-1
\end{flalign*}',
  '\begin{flalign*}
    f(k)&=f(2)\\
    k^2+k(k)+3k&=2^2+k(2)+3k\\
    k^2+k^2+3k&=4+2k+3k\\
    2k^2+3k&=5k+4\\
    2k^2-2k-4&=0\\
    k^2-k-2&=0\\
    (k-2)(k+1)&=0\\
    k&=2\text{ or }-1
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 21
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  21,
  'English',
  'Let $f(x)=2x+5$ and $g(x)=4-x$. If $f(3k)+2=g(2k-1)$, find the value(s) of $k$.',
  'Let $f(x)=2x+5$ and $g(x)=4-x$. If $f(3k)+2=g(2k-1)$, find the value(s) of $k$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 21 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 21 AND language = 'English'),
  '\begin{flalign*}
    f(3k)+2&=g(2k-1)\\
    2(3k)+5+2&=4-(2k-1)\\
    6k+7&=5-2k\\
    8k&=-2\\
    k&=-\frac{1}{4}
\end{flalign*}',
  '\begin{flalign*}
    f(3k)+2&=g(2k-1)\\
    2(3k)+5+2&=4-(2k-1)\\
    6k+7&=5-2k\\
    8k&=-2\\
    k&=-\frac{1}{4}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 22
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  22,
  'English',
  'Let $f(x)=x^2-1$ and $g(x)=2x+2$. If $f(k+1)=g(2k-1)$, find the value(s) of $k$.',
  'Let $f(x)=x^2-1$ and $g(x)=2x+2$. If $f(k+1)=g(2k-1)$, find the value(s) of $k$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 22 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 22 AND language = 'English'),
  '\begin{flalign*}
    f(k+1)&=g(2k-1)\\
    (k+1)^2-1&=2(2k-1)+2\\
    k^2+2k+1-1&=4k-2+2\\
    k^2+2k&=4k\\
    k^2-2k&=0\\
    k(k-2)&=0\\
    k&=0\text{ or }2
\end{flalign*}',
  '\begin{flalign*}
    f(k+1)&=g(2k-1)\\
    (k+1)^2-1&=2(2k-1)+2\\
    k^2+2k+1-1&=4k-2+2\\
    k^2+2k&=4k\\
    k^2-2k&=0\\
    k(k-2)&=0\\
    k&=0\text{ or }2
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 23
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  23,
  'English',
  'Let $f(x)=3-x$ and $g(x)=2x+4$. If $f(4k+1)=g(k-2)$, find the value(s) of $k$.',
  'Let $f(x)=3-x$ and $g(x)=2x+4$. If $f(4k+1)=g(k-2)$, find the value(s) of $k$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 23 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 23 AND language = 'English'),
  '\begin{flalign*}
    f(4k+1)&=g(k-2)\\
    3-(4k+1)&=2(k-2)+4\\
    3-4k-1&=2k-4+4\\
    2-4k&=2k\\
    6k&=2\\
    k&=\frac{1}{3}
\end{flalign*}',
  '\begin{flalign*}
    f(4k+1)&=g(k-2)\\
    3-(4k+1)&=2(k-2)+4\\
    3-4k-1&=2k-4+4\\
    2-4k&=2k\\
    6k&=2\\
    k&=\frac{1}{3}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 24
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  24,
  'English',
  'Let $f(x)=x^2$ and $g(x)=3x-1$. If $f(2k+1)=g(k+4)$, find the value(s) of $k$.',
  'Let $f(x)=x^2$ and $g(x)=3x-1$. If $f(2k+1)=g(k+4)$, find the value(s) of $k$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 24 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 24 AND language = 'English'),
  '\begin{flalign*}
    f(2k+1)&=g(k+4)\\
    (2k+1)^2&=3(k+4)-1\\
    4k^2+4k+1&=3k+12-1\\
    4k^2+4k+1&=3k+11\\
    4k^2+k-10&=0\\
    k&=\frac{-1\pm \sqrt{1^2-4(4)(-10)}}{2(4)}\\
    &=\frac{-1\pm \sqrt{161}}{8}
\end{flalign*}',
  '\begin{flalign*}
    f(2k+1)&=g(k+4)\\
    (2k+1)^2&=3(k+4)-1\\
    4k^2+4k+1&=3k+12-1\\
    4k^2+4k+1&=3k+11\\
    4k^2+k-10&=0\\
    k&=\frac{-1\pm \sqrt{1^2-4(4)(-10)}}{2(4)}\\
    &=\frac{-1\pm \sqrt{161}}{8}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 25
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  25,
  'English',
  'Let $f(x)=2x^2-x$ and $g(x)=x+6$. If $f(k-1)=g(2k+2)$, find the value(s) of $k$.',
  'Let $f(x)=2x^2-x$ and $g(x)=x+6$. If $f(k-1)=g(2k+2)$, find the value(s) of $k$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 25 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 25 AND language = 'English'),
  '\begin{flalign*}
    f(k-1)&=g(2k+2)\\
    2(k-1)^2-(k-1)&=(2k+2)+6\\
    2\left(k^2-2k+1\right)-k+1&=2k+8\\
    2k^2-4k+2-k+1&=2k+8\\
    2k^2-5k+3&=2k+8\\
    2k^2-7k-5&=0\\
    k&=\frac{-(-7)\pm \sqrt{(-7)^2-4(2)(-5)}}{2(2)}\\
    &=\frac{7\pm \sqrt{89}}{4}
\end{flalign*}',
  '\begin{flalign*}
    f(k-1)&=g(2k+2)\\
    2(k-1)^2-(k-1)&=(2k+2)+6\\
    2\left(k^2-2k+1\right)-k+1&=2k+8\\
    2k^2-4k+2-k+1&=2k+8\\
    2k^2-5k+3&=2k+8\\
    2k^2-7k-5&=0\\
    k&=\frac{-(-7)\pm \sqrt{(-7)^2-4(2)(-5)}}{2(2)}\\
    &=\frac{7\pm \sqrt{89}}{4}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 26
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  26,
  'English',
  'It is given that $f(x)=(x+3)(x-1)+ax+b$. If $f(1)=5$ and $f(-3)=-1$, find the values of $a$ and $b$.',
  'It is given that $f(x)=(x+3)(x-1)+ax+b$. If $f(1)=5$ and $f(-3)=-1$, find the values of $a$ and $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 26 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 26 AND language = 'English'),
  '\begin{flalign}
    f(1)&=5 \nonumber \\
    (1+3)(1-1)+a(1)+b&=5 \nonumber \\
    a+b&=5 \tag{1}\\
    \nonumber \\
    f(-3)&=-1 \nonumber \\
    (-3+3)(-3-1)+a(-3)+b&=-1 \nonumber \\
    -3a+b&=-1 \tag{2}
\end{flalign}
$(1)-(2)$, we have
\begin{flalign*}
    (a+b)-(-3a+b)&=5-(-1)\\
    4a&=6\\
    a&=\frac{3}{2}
\end{flalign*}
Substituting $\displaystyle a=\frac{3}{2}$ into $(1)$, we have
\begin{flalign*}
    \frac{3}{2}+b&=5\\
    b&=\frac{7}{2}
\end{flalign*}
Therefore, we have $\displaystyle a=\frac{3}{2}$ and $\displaystyle b=\frac{7}{2}$.',
  '\begin{flalign}
    f(1)&=5 \nonumber \\
    (1+3)(1-1)+a(1)+b&=5 \nonumber \\
    a+b&=5 \tag{1}\\
    \nonumber \\
    f(-3)&=-1 \nonumber \\
    (-3+3)(-3-1)+a(-3)+b&=-1 \nonumber \\
    -3a+b&=-1 \tag{2}
\end{flalign}
$(1)-(2)$, we have
\begin{flalign*}
    (a+b)-(-3a+b)&=5-(-1)\\
    4a&=6\\
    a&=\frac{3}{2}
\end{flalign*}
Substituting $\displaystyle a=\frac{3}{2}$ into $(1)$, we have
\begin{flalign*}
    \frac{3}{2}+b&=5\\
    b&=\frac{7}{2}
\end{flalign*}
Therefore, we have $\displaystyle a=\frac{3}{2}$ and $\displaystyle b=\frac{7}{2}$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 27
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  27,
  'English',
  'It is given that $f(x)=(x-4)(x+1)+ax+b$. If $f(2)=10$ and $f(-2)=-6$, find the values of $a$ and $b$.',
  'It is given that $f(x)=(x-4)(x+1)+ax+b$. If $f(2)=10$ and $f(-2)=-6$, find the values of $a$ and $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 27 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 27 AND language = 'English'),
  '\begin{flalign}
    f(2)&=10 \nonumber \\
    (2-4)(2+1)+a(2)+b&=10 \nonumber \\
    -6+2a+b&=10 \nonumber \\
    2a+b&=16 \tag{1} \\
    \nonumber \\
    f(-2)&=-6 \nonumber \\
    (-2-4)(-2+1)+a(-2)+b&=-6 \nonumber \\
    6-2a+b&=-6 \nonumber \\
    -2a+b&=-12 \tag{2}
\end{flalign}
$(1)+(2)$, we have
\begin{flalign*}
    (2a+b)+(-2a+b)&=16+(-12)\\
    2b&=4\\
    b&=2
\end{flalign*}
Substituting $b=2$ into $(1)$, we have
\begin{flalign*}
    2a+2&=16\\
    2a&=14\\
    a&=7
\end{flalign*}
Therefore, we have $a=7$ and $b=2$.',
  '\begin{flalign}
    f(2)&=10 \nonumber \\
    (2-4)(2+1)+a(2)+b&=10 \nonumber \\
    -6+2a+b&=10 \nonumber \\
    2a+b&=16 \tag{1} \\
    \nonumber \\
    f(-2)&=-6 \nonumber \\
    (-2-4)(-2+1)+a(-2)+b&=-6 \nonumber \\
    6-2a+b&=-6 \nonumber \\
    -2a+b&=-12 \tag{2}
\end{flalign}
$(1)+(2)$, we have
\begin{flalign*}
    (2a+b)+(-2a+b)&=16+(-12)\\
    2b&=4\\
    b&=2
\end{flalign*}
Substituting $b=2$ into $(1)$, we have
\begin{flalign*}
    2a+2&=16\\
    2a&=14\\
    a&=7
\end{flalign*}
Therefore, we have $a=7$ and $b=2$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 28
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  28,
  'English',
  'It is given that $f(x)=(x+5)(x-3)+ax+b$. If $f(0)=-10$ and $f(2)=0$, find the values of $a$ and $b$.',
  'It is given that $f(x)=(x+5)(x-3)+ax+b$. If $f(0)=-10$ and $f(2)=0$, find the values of $a$ and $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 28 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 28 AND language = 'English'),
  '\begin{flalign}
    f(0)&=-10 \nonumber \\
    (0+5)(0-3)+a(0)+b&=-10 \nonumber \\
    -15+b&=-10 \nonumber \\
    b&=5 \nonumber \\
    \nonumber \\
    f(2)&=0 \nonumber \\
    (2+5)(2-3)+a(2)+b&=0 \nonumber \\
    -7+2a+b&=0 \nonumber \\
    2a+b&=7 \tag{1}
\end{flalign}
Substituting $b=5$ into $(1)$, we have
\begin{flalign*}
    2a+5&=7\\
    2a&=2\\
    a&=1
\end{flalign*}
Therefore, we have $a=1$ and $b=5$.',
  '\begin{flalign}
    f(0)&=-10 \nonumber \\
    (0+5)(0-3)+a(0)+b&=-10 \nonumber \\
    -15+b&=-10 \nonumber \\
    b&=5 \nonumber \\
    \nonumber \\
    f(2)&=0 \nonumber \\
    (2+5)(2-3)+a(2)+b&=0 \nonumber \\
    -7+2a+b&=0 \nonumber \\
    2a+b&=7 \tag{1}
\end{flalign}
Substituting $b=5$ into $(1)$, we have
\begin{flalign*}
    2a+5&=7\\
    2a&=2\\
    a&=1
\end{flalign*}
Therefore, we have $a=1$ and $b=5$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 29
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  29,
  'English',
  'It is given that $f(x)=(x+2)(x+4)+ax+b$. If $f(-1)=5$ and $f(-3)=-5$, find the values of $a$ and $b$.',
  'It is given that $f(x)=(x+2)(x+4)+ax+b$. If $f(-1)=5$ and $f(-3)=-5$, find the values of $a$ and $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 29 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 29 AND language = 'English'),
  '\begin{flalign}
    f(-1)&=5 \nonumber \\
    (-1+2)(-1+4)+a(-1)+b&=5 \nonumber \\
    3-a+b&=5 \nonumber \\
    -a+b&=2 \tag{1} \\
    \nonumber \\
    f(-3)&=-5 \nonumber \\
    (-3+2)(-3+4)+a(-3)+b&=-5 \nonumber \\
    -1-3a+b&=-5 \nonumber \\
    -3a+b&=-4 \tag{2}
\end{flalign}
$(1)-(2)$, we have
\begin{flalign*}
    (-a+b)-(-3a+b)&=2-(-4)\\
    2a&=6\\
    a&=3
\end{flalign*}
Substituting $a=3$ into $(1)$, we have
\begin{flalign*}
    -3+b&=2\\
    b&=5
\end{flalign*}
Therefore, we have $a=3$ and $b=5$.',
  '\begin{flalign}
    f(-1)&=5 \nonumber \\
    (-1+2)(-1+4)+a(-1)+b&=5 \nonumber \\
    3-a+b&=5 \nonumber \\
    -a+b&=2 \tag{1} \\
    \nonumber \\
    f(-3)&=-5 \nonumber \\
    (-3+2)(-3+4)+a(-3)+b&=-5 \nonumber \\
    -1-3a+b&=-5 \nonumber \\
    -3a+b&=-4 \tag{2}
\end{flalign}
$(1)-(2)$, we have
\begin{flalign*}
    (-a+b)-(-3a+b)&=2-(-4)\\
    2a&=6\\
    a&=3
\end{flalign*}
Substituting $a=3$ into $(1)$, we have
\begin{flalign*}
    -3+b&=2\\
    b&=5
\end{flalign*}
Therefore, we have $a=3$ and $b=5$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 30
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  30,
  'English',
  'It is given that $f(x)=(x+7)(x-1)+ax+b$. If $f(3)=20$ and $f(-3)=-10$, find the values of $a$ and $b$.',
  'It is given that $f(x)=(x+7)(x-1)+ax+b$. If $f(3)=20$ and $f(-3)=-10$, find the values of $a$ and $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 30 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 30 AND language = 'English'),
  '\begin{flalign}
    f(3)&=20 \nonumber \\
    (3+7)(3-1)+a(3)+b&=20 \nonumber \\
    20+3a+b&=20 \nonumber \\
    3a+b&=0 \tag{1} \\
    \nonumber \\
    f(-3)&=-10 \nonumber \\
    (-3+7)(-3-1)+a(-3)+b&=-10 \nonumber \\
    -16-3a+b&=-10 \nonumber \\
    -3a+b&=6 \tag{2}
\end{flalign}
$(2)-(1)$, we have
\begin{flalign*}
    (-3a+b)-(3a+b)&=6-0\\
    -6a&=6\\
    a&=-1
\end{flalign*}
Substituting $a=-1$ into $(1)$, we have
\begin{flalign*}
    3(-1)+b&=0\\
    -3+b&=0\\
    b&=3
\end{flalign*}
Therefore, we have $a=-1$ and $b=3$.',
  '\begin{flalign}
    f(3)&=20 \nonumber \\
    (3+7)(3-1)+a(3)+b&=20 \nonumber \\
    20+3a+b&=20 \nonumber \\
    3a+b&=0 \tag{1} \\
    \nonumber \\
    f(-3)&=-10 \nonumber \\
    (-3+7)(-3-1)+a(-3)+b&=-10 \nonumber \\
    -16-3a+b&=-10 \nonumber \\
    -3a+b&=6 \tag{2}
\end{flalign}
$(2)-(1)$, we have
\begin{flalign*}
    (-3a+b)-(3a+b)&=6-0\\
    -6a&=6\\
    a&=-1
\end{flalign*}
Substituting $a=-1$ into $(1)$, we have
\begin{flalign*}
    3(-1)+b&=0\\
    -3+b&=0\\
    b&=3
\end{flalign*}
Therefore, we have $a=-1$ and $b=3$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 31
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  31,
  'English',
  'Let $f(x)=3x^2-2x+1$. If $g(x+1)=f(x)$, find $g(x)$.',
  'Let $f(x)=3x^2-2x+1$. If $g(x+1)=f(x)$, find $g(x)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 31 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 31 AND language = 'English'),
  '\begin{flalign*}
    g(x)&=g\left((x-1)+1\right)\\
    &=f(x-1)\\
    &=3(x-1)^2-2(x-1)+1\\
    &=3\left(x^2-2x+1\right)-2x+2+1\\
    &=3x^2-6x+3-2x+3\\
    &=3x^2-8x+6
\end{flalign*}',
  '\begin{flalign*}
    g(x)&=g\left((x-1)+1\right)\\
    &=f(x-1)\\
    &=3(x-1)^2-2(x-1)+1\\
    &=3\left(x^2-2x+1\right)-2x+2+1\\
    &=3x^2-6x+3-2x+3\\
    &=3x^2-8x+6
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 32
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  32,
  'English',
  'Let $f(x)=2x^2+4x+3$. If $g(2x)=f(x)$, find $g(x)$.',
  'Let $f(x)=2x^2+4x+3$. If $g(2x)=f(x)$, find $g(x)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 32 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 32 AND language = 'English'),
  '\begin{flalign*}
    g(x)&=g\left(2\left(\frac{x}{2}\right)\right)\\
    &=f\left(\frac{x}{2}\right)\\
    &=2\left(\frac{x}{2}\right)^2+4\left(\frac{x}{2}\right)+3\\
    &=\frac{x^2}{2}+2x+3
\end{flalign*}',
  '\begin{flalign*}
    g(x)&=g\left(2\left(\frac{x}{2}\right)\right)\\
    &=f\left(\frac{x}{2}\right)\\
    &=2\left(\frac{x}{2}\right)^2+4\left(\frac{x}{2}\right)+3\\
    &=\frac{x^2}{2}+2x+3
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 33
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  33,
  'English',
  'Let $f(x)=5x^2+3x-2$. If $g(2x-1)=f(x)$, find $g(x)$.',
  'Let $f(x)=5x^2+3x-2$. If $g(2x-1)=f(x)$, find $g(x)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 33 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 33 AND language = 'English'),
  '\begin{flalign*}
    g(x)&=g\left(2\left(\frac{x+1}{2}\right)-1\right)\\
    &=f\left(\frac{x+1}{2}\right)\\
    &=5\left(\frac{x+1}{2}\right)^2+3\left(\frac{x+1}{2}\right)-2\\
    &=\frac{5\left(x^2+2x+1\right)}{4}+\frac{3(x+1)}{2}-2\\
    &=\frac{5\left(x^2+2x+1\right)+6(x+1)-4(2)}{4}\\
    &=\frac{5x^2+10x+5+6x+6-8}{4}\\
    &=\frac{5x^2+16x+3}{4}
\end{flalign*}',
  '\begin{flalign*}
    g(x)&=g\left(2\left(\frac{x+1}{2}\right)-1\right)\\
    &=f\left(\frac{x+1}{2}\right)\\
    &=5\left(\frac{x+1}{2}\right)^2+3\left(\frac{x+1}{2}\right)-2\\
    &=\frac{5\left(x^2+2x+1\right)}{4}+\frac{3(x+1)}{2}-2\\
    &=\frac{5\left(x^2+2x+1\right)+6(x+1)-4(2)}{4}\\
    &=\frac{5x^2+10x+5+6x+6-8}{4}\\
    &=\frac{5x^2+16x+3}{4}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 34
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  34,
  'English',
  'Let $f(x)=x^2+x+1$. If $g(x+3)=f(x-1)$, find $g(x)$.',
  'Let $f(x)=x^2+x+1$. If $g(x+3)=f(x-1)$, find $g(x)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 34 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 34 AND language = 'English'),
  '\begin{flalign*}
    g(x)&=g\left((x-3)+3\right)\\
    &=f\left((x-3)-1\right)\\
    &=f(x-4)\\
    &=(x-4)^2+(x-4)+1\\
    &=x^2-8x+16+x-4+1\\
    &=x^2-7x+13
\end{flalign*}',
  '\begin{flalign*}
    g(x)&=g\left((x-3)+3\right)\\
    &=f\left((x-3)-1\right)\\
    &=f(x-4)\\
    &=(x-4)^2+(x-4)+1\\
    &=x^2-8x+16+x-4+1\\
    &=x^2-7x+13
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 35
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  35,
  'English',
  'Let $f(x)=-x^2+4x-5$. If $g(x-4)=f(2-x)$, find $g(x)$.',
  'Let $f(x)=-x^2+4x-5$. If $g(x-4)=f(2-x)$, find $g(x)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 35 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 35 AND language = 'English'),
  '\begin{flalign*}
    g(x)&=g\left((x+4)-4\right)\\
    &=f\left(2-(x+4)\right)\\
    &=f(-x-2)\\
    &=-(-x-2)^2+4(-x-2)-5\\
    &=-\left(x^2+4x+4\right)-4x-8-5\\
    &=-x^2-4x-4-4x-13\\
    &=-x^2-8x-17
\end{flalign*}',
  '\begin{flalign*}
    g(x)&=g\left((x+4)-4\right)\\
    &=f\left(2-(x+4)\right)\\
    &=f(-x-2)\\
    &=-(-x-2)^2+4(-x-2)-5\\
    &=-\left(x^2+4x+4\right)-4x-8-5\\
    &=-x^2-4x-4-4x-13\\
    &=-x^2-8x-17
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 36
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  36,
  'English',
  'Let $f(x)=6x^2-x+8$. If $\displaystyle g\left(\frac{x}{2}\right)=f(x-2)$, find $g(x)$.',
  'Let $f(x)=6x^2-x+8$. If $\displaystyle g\left(\frac{x}{2}\right)=f(x-2)$, find $g(x)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 36 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 36 AND language = 'English'),
  '\begin{flalign*}
    g(x)&=g\left(\frac{2x}{2}\right)\\
    &=f(2x-2)\\
    &=6(2x-2)^2-(2x-2)+8\\
    &=6\left(4x^2-8x+4\right)-2x+2+8\\
    &=24x^2-48x+24-2x+10\\
    &=24x^2-50x+34
\end{flalign*}',
  '\begin{flalign*}
    g(x)&=g\left(\frac{2x}{2}\right)\\
    &=f(2x-2)\\
    &=6(2x-2)^2-(2x-2)+8\\
    &=6\left(4x^2-8x+4\right)-2x+2+8\\
    &=24x^2-48x+24-2x+10\\
    &=24x^2-50x+34
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 37
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  37,
  'English',
  'Let $f(x)=x^2-3x+4$. If $g(x+2)=f(2x)$, find $g(x)$.',
  'Let $f(x)=x^2-3x+4$. If $g(x+2)=f(2x)$, find $g(x)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 37 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 37 AND language = 'English'),
  '\begin{flalign*}
    g(x)&=g\left((x-2)+2\right)\\
    &=f\left(2(x-2)\right)\\
    &=f(2x-4)\\
    &=(2x-4)^2-3(2x-4)+4\\
    &=4x^2-16x+16-6x+12+4\\
    &=4x^2-22x+32
\end{flalign*}',
  '\begin{flalign*}
    g(x)&=g\left((x-2)+2\right)\\
    &=f\left(2(x-2)\right)\\
    &=f(2x-4)\\
    &=(2x-4)^2-3(2x-4)+4\\
    &=4x^2-16x+16-6x+12+4\\
    &=4x^2-22x+32
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 38
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  38,
  'English',
  'Let $f(x)=4x^2-x+9$. If $g(3x)=f(x+1)$, find $g(x)$.',
  'Let $f(x)=4x^2-x+9$. If $g(3x)=f(x+1)$, find $g(x)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 38 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 38 AND language = 'English'),
  '\begin{flalign*}
    g(x)&=g\left(3\left(\frac{x}{3}\right)\right)\\
    &=f\left(\frac{x}{3}+1\right)\\
    &=4\left(\frac{x}{3}+1\right)^2-\left(\frac{x}{3}+1\right)+9\\
    &=4\left(\frac{x^2}{9}+\frac{2x}{3}+1\right)-\frac{x}{3}-1+9\\
    &=\frac{4x^2}{9}+\frac{8x}{3}+4-\frac{x}{3}+8\\
    &=\frac{4x^2}{9}+\frac{7x}{3}+12
\end{flalign*}',
  '\begin{flalign*}
    g(x)&=g\left(3\left(\frac{x}{3}\right)\right)\\
    &=f\left(\frac{x}{3}+1\right)\\
    &=4\left(\frac{x}{3}+1\right)^2-\left(\frac{x}{3}+1\right)+9\\
    &=4\left(\frac{x^2}{9}+\frac{2x}{3}+1\right)-\frac{x}{3}-1+9\\
    &=\frac{4x^2}{9}+\frac{8x}{3}+4-\frac{x}{3}+8\\
    &=\frac{4x^2}{9}+\frac{7x}{3}+12
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 39
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  39,
  'English',
  'Let $f(x)=2x^2+5$. If $\displaystyle g\left(\frac{x}{3}-2\right)=f(x-1)$, find $g(x)$.',
  'Let $f(x)=2x^2+5$. If $\displaystyle g\left(\frac{x}{3}-2\right)=f(x-1)$, find $g(x)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 39 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 39 AND language = 'English'),
  '\begin{flalign*}
    g(x)&=g\left(\frac{3(x+2)}{3}-2\right)\\
    &=f\left(3(x+2)-1\right)\\
    &=f(3x+5)\\
    &=2(3x+5)^2+5\\
    &=2\left(9x^2+30x+25\right)+5\\
    &=18x^2+60x+50+5\\
    &=18x^2+60x+55
\end{flalign*}',
  '\begin{flalign*}
    g(x)&=g\left(\frac{3(x+2)}{3}-2\right)\\
    &=f\left(3(x+2)-1\right)\\
    &=f(3x+5)\\
    &=2(3x+5)^2+5\\
    &=2\left(9x^2+30x+25\right)+5\\
    &=18x^2+60x+50+5\\
    &=18x^2+60x+55
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 40
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  40,
  'English',
  'Let $f(x)=-2x^2+3x+7$. If $g(x+5)=f(-x)$, find $g(x)$.',
  'Let $f(x)=-2x^2+3x+7$. If $g(x+5)=f(-x)$, find $g(x)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 40 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 40 AND language = 'English'),
  '\begin{flalign*}
    g(x)&=g\left((x-5)+5\right)\\
    &=f\left(-(x-5)\right)\\
    &=f(-x+5)\\
    &=-2(-x+5)^2+3(-x+5)+7\\
    &=-2\left(x^2-10x+25\right)-3x+15+7\\
    &=-2x^2+20x-50-3x+22\\
    &=-2x^2+17x-28
\end{flalign*}',
  '\begin{flalign*}
    g(x)&=g\left((x-5)+5\right)\\
    &=f\left(-(x-5)\right)\\
    &=f(-x+5)\\
    &=-2(-x+5)^2+3(-x+5)+7\\
    &=-2\left(x^2-10x+25\right)-3x+15+7\\
    &=-2x^2+20x-50-3x+22\\
    &=-2x^2+17x-28
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 41
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  41,
  'English',
  'The figure shows the graph of $y=f(x)$, where $f(x)=kx+4$. The graph cuts the $y$-axis and the $x$-axis at points $A$ and $B$ respectively. It is given that $f(-1)=2k$. Find the area of $\triangle OAB$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  % Axes
  \draw[->] (-5,0) -- (2,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,5) node[above] {$y$};
  \draw[domain=-4:1, smooth, variable=\x, blue] plot ({\x}, {(4/3)*\x+4}) node [below right] {$y=f(x)$};
  \filldraw[black] (0,4) circle (2pt) node[right] {$A$};
  \filldraw[black] (-3,0) circle (2pt) node[below] {$B$};
  \filldraw[black] (0,0) circle (2pt) node[below left] {$O$};
\end{tikzpicture}}
\end{center}',
  'The figure shows the graph of $y=f(x)$, where $f(x)=kx+4$. The graph cuts the $y$-axis and the $x$-axis at points $A$ and $B$ respectively. It is given that $f(-1)=2k$. Find the area of $\triangle OAB$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  % Axes
  \draw[->] (-5,0) -- (2,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,5) node[above] {$y$};
  \draw[domain=-4:1, smooth, variable=\x, blue] plot ({\x}, {(4/3)*\x+4}) node [below right] {$y=f(x)$};
  \filldraw[black] (0,4) circle (2pt) node[right] {$A$};
  \filldraw[black] (-3,0) circle (2pt) node[below] {$B$};
  \filldraw[black] (0,0) circle (2pt) node[below left] {$O$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 41 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 41 AND language = 'English'),
  '\begin{flalign*}
    f(-1)&=2k\\
    k(-1)+4&=2k\\
    -k+4&=2k\\
    3k&=4\\
    k&=\frac{4}{3}
\end{flalign*}
Therefore, we have $\displaystyle f(x)=\frac{4}{3}x+4$.\\
Substituting $x=0$ into $y=f(x)$, we have $y=4$. The coordinates of $A$ are $(0,4)$.\\
Substituting $y=0$ into $y=f(x)$, we have $x=-3$. The coordinates of $B$ are $(-3,0)$.\\
Therefore, the area of $\displaystyle \triangle OAB=\frac{1}{2}(4)(3)=6$ units square.',
  '\begin{flalign*}
    f(-1)&=2k\\
    k(-1)+4&=2k\\
    -k+4&=2k\\
    3k&=4\\
    k&=\frac{4}{3}
\end{flalign*}
Therefore, we have $\displaystyle f(x)=\frac{4}{3}x+4$.\\
Substituting $x=0$ into $y=f(x)$, we have $y=4$. The coordinates of $A$ are $(0,4)$.\\
Substituting $y=0$ into $y=f(x)$, we have $x=-3$. The coordinates of $B$ are $(-3,0)$.\\
Therefore, the area of $\displaystyle \triangle OAB=\frac{1}{2}(4)(3)=6$ units square.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 42
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  42,
  'English',
  'The figure shows the graph of $y=f(x)$, where $f(x)=-2kx+10$. The graph cuts the $y$-axis and the $x$-axis at points $A$ and $B$ respectively. It is given that $f(3)=4k$. Find the area of $\triangle OAB$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  % Axes
  \draw[->] (-1,0) -- (7,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,7) node[above] {$y$};
  \draw[domain=-1:6, smooth, variable=\x, blue] plot ({\x/2}, {-\x+5}) node [above right] {$y=f(x)$};
  % Points A, B, and O
  \filldraw[black] (0,5) circle (2pt) node[left] {$A$};
  \filldraw[black] (2.5,0) circle (2pt) node[below left] {$B$};
  \filldraw[black] (0,0) circle (2pt) node[below left] {$O$};
\end{tikzpicture}}
\end{center}',
  'The figure shows the graph of $y=f(x)$, where $f(x)=-2kx+10$. The graph cuts the $y$-axis and the $x$-axis at points $A$ and $B$ respectively. It is given that $f(3)=4k$. Find the area of $\triangle OAB$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  % Axes
  \draw[->] (-1,0) -- (7,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,7) node[above] {$y$};
  \draw[domain=-1:6, smooth, variable=\x, blue] plot ({\x/2}, {-\x+5}) node [above right] {$y=f(x)$};
  % Points A, B, and O
  \filldraw[black] (0,5) circle (2pt) node[left] {$A$};
  \filldraw[black] (2.5,0) circle (2pt) node[below left] {$B$};
  \filldraw[black] (0,0) circle (2pt) node[below left] {$O$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 42 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 42 AND language = 'English'),
  '\begin{flalign*}
    f(3)&=4k\\
    -2k(3)+10&=4k\\
    -6k+10&=4k\\
    10k&=10\\
    k&=1
\end{flalign*}
Therefore, we have $f(x)=-2x+10$.\\
Substituting $x=0$ into $y=f(x)$, we have $y=10$. The coordinates of $A$ are $(0,10)$.\\
Substituting $y=0$ into $y=f(x)$, we have $x=5$. The coordinates of $B$ are $(5,0)$.\\
Therefore, the area of $\displaystyle \triangle OAB=\frac{1}{2}(10)(5)=25$ units square.',
  '\begin{flalign*}
    f(3)&=4k\\
    -2k(3)+10&=4k\\
    -6k+10&=4k\\
    10k&=10\\
    k&=1
\end{flalign*}
Therefore, we have $f(x)=-2x+10$.\\
Substituting $x=0$ into $y=f(x)$, we have $y=10$. The coordinates of $A$ are $(0,10)$.\\
Substituting $y=0$ into $y=f(x)$, we have $x=5$. The coordinates of $B$ are $(5,0)$.\\
Therefore, the area of $\displaystyle \triangle OAB=\frac{1}{2}(10)(5)=25$ units square.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 43
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  43,
  'English',
  'The figure shows the graph of $y=f(x)$, where $f(x)=kx-8$. The graph cuts the $y$-axis and the $x$-axis at points $A$ and $B$ respectively. It is given that $f(2)=k$. Find the area of $\triangle OAB$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  % Axes
  \draw[->] (-1,0) -- (6,0) node[right] {$x$};
  \draw[->] (0,-4.5) -- (0,1) node[above] {$y$};
  % Graph of f(x) = 8x-8 (since k=8)
  \draw[domain=-0.2:1.2, smooth, variable=\x, blue] plot ({2*\x}, {4*\x-4}) node [below right] {$y=f(x)$};
  % Points A, B, and O
  \filldraw[black] (0,-4) circle (2pt) node[left] {$A$};
  \filldraw[black] (2,0) circle (2pt) node[below right] {$B$};
  \filldraw[black] (0,0) circle (2pt) node[below left] {$O$};
\end{tikzpicture}}
\end{center}',
  'The figure shows the graph of $y=f(x)$, where $f(x)=kx-8$. The graph cuts the $y$-axis and the $x$-axis at points $A$ and $B$ respectively. It is given that $f(2)=k$. Find the area of $\triangle OAB$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  % Axes
  \draw[->] (-1,0) -- (6,0) node[right] {$x$};
  \draw[->] (0,-4.5) -- (0,1) node[above] {$y$};
  % Graph of f(x) = 8x-8 (since k=8)
  \draw[domain=-0.2:1.2, smooth, variable=\x, blue] plot ({2*\x}, {4*\x-4}) node [below right] {$y=f(x)$};
  % Points A, B, and O
  \filldraw[black] (0,-4) circle (2pt) node[left] {$A$};
  \filldraw[black] (2,0) circle (2pt) node[below right] {$B$};
  \filldraw[black] (0,0) circle (2pt) node[below left] {$O$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 43 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 43 AND language = 'English'),
  '\begin{flalign*}
    f(2)&=k\\
    k(2)-8&=k\\
    2k-8&=k\\
    k&=8
\end{flalign*}
Therefore, we have $f(x)=8x-8$.\\
Substituting $x=0$ into $y=f(x)$, we have $y=-8$. The coordinates of $A$ are $(0,-8)$.\\
Substituting $y=0$ into $y=f(x)$, we have $x=1$. The coordinates of $B$ are $(1,0)$.\\
Therefore, the area of $\displaystyle \triangle OAB=\frac{1}{2}(8)(1)=4$ units square.',
  '\begin{flalign*}
    f(2)&=k\\
    k(2)-8&=k\\
    2k-8&=k\\
    k&=8
\end{flalign*}
Therefore, we have $f(x)=8x-8$.\\
Substituting $x=0$ into $y=f(x)$, we have $y=-8$. The coordinates of $A$ are $(0,-8)$.\\
Substituting $y=0$ into $y=f(x)$, we have $x=1$. The coordinates of $B$ are $(1,0)$.\\
Therefore, the area of $\displaystyle \triangle OAB=\frac{1}{2}(8)(1)=4$ units square.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 44
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  44,
  'English',
  'The figure shows the graph of $y=f(x)$, where $f(x)=-kx+12$. The graph cuts the $y$-axis and the $x$-axis at points $A$ and $B$ respectively. It is given that $f(3)=k$. Find the area of $\triangle OAB$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  % Axes
  \draw[->] (-1,0) -- (6,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,7/1.5) node[above] {$y$};
  % Graph of f(x) = -3x+12 (since k=3)
  \draw[domain=-0.5:4.5, smooth, variable=\x, blue] plot ({\x}, {-1.5*\x/1.5+6/1.5}) node [right] {$y=f(x)$};
  % Points A, B, and O
  \filldraw[black] (0,6/1.5) circle (2pt) node[left] {$A$};
  \filldraw[black] (4,0) circle (2pt) node[below left] {$B$};
  \filldraw[black] (0,0) circle (2pt) node[below left] {$O$};
\end{tikzpicture}}
\end{center}',
  'The figure shows the graph of $y=f(x)$, where $f(x)=-kx+12$. The graph cuts the $y$-axis and the $x$-axis at points $A$ and $B$ respectively. It is given that $f(3)=k$. Find the area of $\triangle OAB$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  % Axes
  \draw[->] (-1,0) -- (6,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,7/1.5) node[above] {$y$};
  % Graph of f(x) = -3x+12 (since k=3)
  \draw[domain=-0.5:4.5, smooth, variable=\x, blue] plot ({\x}, {-1.5*\x/1.5+6/1.5}) node [right] {$y=f(x)$};
  % Points A, B, and O
  \filldraw[black] (0,6/1.5) circle (2pt) node[left] {$A$};
  \filldraw[black] (4,0) circle (2pt) node[below left] {$B$};
  \filldraw[black] (0,0) circle (2pt) node[below left] {$O$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 44 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 44 AND language = 'English'),
  '\begin{flalign*}
    f(3)&=k\\
    -k(3)+12&=k\\
    -3k+12&=k\\
    4k&=12\\
    k&=3
\end{flalign*}
Therefore, we have $f(x)=-3x+12$.\\
Substituting $x=0$ into $y=f(x)$, we have $y=12$. The coordinates of $A$ are $(0,12)$.\\
Substituting $y=0$ into $y=f(x)$, we have $x=4$. The coordinates of $B$ are $(4,0)$.\\
Therefore, the area of $\displaystyle \triangle OAB=\frac{1}{2}(12)(4)=24$ units square.',
  '\begin{flalign*}
    f(3)&=k\\
    -k(3)+12&=k\\
    -3k+12&=k\\
    4k&=12\\
    k&=3
\end{flalign*}
Therefore, we have $f(x)=-3x+12$.\\
Substituting $x=0$ into $y=f(x)$, we have $y=12$. The coordinates of $A$ are $(0,12)$.\\
Substituting $y=0$ into $y=f(x)$, we have $x=4$. The coordinates of $B$ are $(4,0)$.\\
Therefore, the area of $\displaystyle \triangle OAB=\frac{1}{2}(12)(4)=24$ units square.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 45
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  45,
  'English',
  'The figure shows the graph of $y=f(x)$, where $f(x)=k-2x$. The graph cuts the $y$-axis and the $x$-axis at points $A$ and $B$ respectively. It is given that $f(4)=-k$. Find the area of $\triangle OAB$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  % Axes
  \draw[->] (-1*2,0) -- (4*2,0) node[right] {$x$};
  \draw[->] (0,-1*2) -- (0,5/1.5*2) node[above] {$y$};
  % Graph of f(x) = 4-2x (since k=4)
  \draw[domain=-0.5:2.5, smooth, variable=\x, blue] plot ({\x*2}, {4/1.5*2-2*\x/1.5*2}) node [above right] {$y=f(x)$};
  % Points A, B, and O
  \filldraw[black] (0,4/1.5*2) circle (2pt) node[left] {$A$};
  \filldraw[black] (2*2,0) circle (2pt) node[below] {$B$};
  \filldraw[black] (0,0) circle (2pt) node[below left] {$O$};
\end{tikzpicture}}
\end{center}',
  'The figure shows the graph of $y=f(x)$, where $f(x)=k-2x$. The graph cuts the $y$-axis and the $x$-axis at points $A$ and $B$ respectively. It is given that $f(4)=-k$. Find the area of $\triangle OAB$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  % Axes
  \draw[->] (-1*2,0) -- (4*2,0) node[right] {$x$};
  \draw[->] (0,-1*2) -- (0,5/1.5*2) node[above] {$y$};
  % Graph of f(x) = 4-2x (since k=4)
  \draw[domain=-0.5:2.5, smooth, variable=\x, blue] plot ({\x*2}, {4/1.5*2-2*\x/1.5*2}) node [above right] {$y=f(x)$};
  % Points A, B, and O
  \filldraw[black] (0,4/1.5*2) circle (2pt) node[left] {$A$};
  \filldraw[black] (2*2,0) circle (2pt) node[below] {$B$};
  \filldraw[black] (0,0) circle (2pt) node[below left] {$O$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 45 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 45 AND language = 'English'),
  '\begin{flalign*}
    f(4)&=-k\\
    k-2(4)&=-k\\
    k-8&=-k\\
    2k&=8\\
    k&=4
\end{flalign*}
Therefore, we have $f(x)=4-2x$.\\
Substituting $x=0$ into $y=f(x)$, we have $y=4$. The coordinates of $A$ are $(0,4)$.\\
Substituting $y=0$ into $y=f(x)$, we have $x=2$. The coordinates of $B$ are $(2,0)$.\\
Therefore, the area of $\displaystyle \triangle OAB=\frac{1}{2}(4)(2)=4$ units square.',
  '\begin{flalign*}
    f(4)&=-k\\
    k-2(4)&=-k\\
    k-8&=-k\\
    2k&=8\\
    k&=4
\end{flalign*}
Therefore, we have $f(x)=4-2x$.\\
Substituting $x=0$ into $y=f(x)$, we have $y=4$. The coordinates of $A$ are $(0,4)$.\\
Substituting $y=0$ into $y=f(x)$, we have $x=2$. The coordinates of $B$ are $(2,0)$.\\
Therefore, the area of $\displaystyle \triangle OAB=\frac{1}{2}(4)(2)=4$ units square.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 46
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  46,
  'English',
  'It is given that the $y$-intercept of the graph of $y=a(x-5)^2+b$ is $2$, and its vertex is at $(5,10)$. Find the values of $a$ and $b$.',
  'It is given that the $y$-intercept of the graph of $y=a(x-5)^2+b$ is $2$, and its vertex is at $(5,10)$. Find the values of $a$ and $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 46 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 46 AND language = 'English'),
  'The function is given in vertex form, we have $b=10$.\\
Substituting $x=0$, $y=2$ and $b=10$, we have
\begin{flalign*}
    2&=a(0-5)^2+10\\
    2&=25a+10\\
    25a&=-8\\
    a&=-\frac{8}{25}
\end{flalign*}
Therefore, we have $\displaystyle (a,b)=\left(-\frac{8}{25},10\right)$.',
  'The function is given in vertex form, we have $b=10$.\\
Substituting $x=0$, $y=2$ and $b=10$, we have
\begin{flalign*}
    2&=a(0-5)^2+10\\
    2&=25a+10\\
    25a&=-8\\
    a&=-\frac{8}{25}
\end{flalign*}
Therefore, we have $\displaystyle (a,b)=\left(-\frac{8}{25},10\right)$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 47
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  47,
  'English',
  'It is given that $y=-3x^2+ax+b$ has its vertex at $\displaystyle \left(\frac{1}{2},4\right)$. Find the values of $a$ and $b$.',
  'It is given that $y=-3x^2+ax+b$ has its vertex at $\displaystyle \left(\frac{1}{2},4\right)$. Find the values of $a$ and $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 47 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 47 AND language = 'English'),
  '\begin{flalign*}
    y&=-3x^2+ax+b\\
    &=-3\left(x^2-\frac{a}{3}x\right)+b\\
    &=-3\left(x^2-2(x)\left(\frac{a}{6}\right)+\left(\frac{a}{6}\right)^2-\left(\frac{a}{6}\right)^2\right)+b\\
    &=-3\left(x-\frac{a}{6}\right)^2+3\left(\frac{a}{6}\right)^2+b\\
    &=-3\left(x-\frac{a}{6}\right)^2+\frac{a^2}{12}+b
\end{flalign*}
Therefore, we have
\begin{flalign}
    \frac{a}{6}&=\frac{1}{2} \tag{1} \\
    \frac{a^2}{12}+b&=4 \tag{2}
\end{flalign}
By $(1)$, we have $a=3$.\\
Substituting $a=3$ into $(2)$, we have 
\begin{flalign*}
    \frac{3^2}{12}+b&=4\\
    \frac{9}{12}+b&=4\\
    b&=\frac{13}{4}
\end{flalign*}
Therefore, we have $\displaystyle (a,b)=\left(3,\frac{13}{4}\right)$.',
  '\begin{flalign*}
    y&=-3x^2+ax+b\\
    &=-3\left(x^2-\frac{a}{3}x\right)+b\\
    &=-3\left(x^2-2(x)\left(\frac{a}{6}\right)+\left(\frac{a}{6}\right)^2-\left(\frac{a}{6}\right)^2\right)+b\\
    &=-3\left(x-\frac{a}{6}\right)^2+3\left(\frac{a}{6}\right)^2+b\\
    &=-3\left(x-\frac{a}{6}\right)^2+\frac{a^2}{12}+b
\end{flalign*}
Therefore, we have
\begin{flalign}
    \frac{a}{6}&=\frac{1}{2} \tag{1} \\
    \frac{a^2}{12}+b&=4 \tag{2}
\end{flalign}
By $(1)$, we have $a=3$.\\
Substituting $a=3$ into $(2)$, we have 
\begin{flalign*}
    \frac{3^2}{12}+b&=4\\
    \frac{9}{12}+b&=4\\
    b&=\frac{13}{4}
\end{flalign*}
Therefore, we have $\displaystyle (a,b)=\left(3,\frac{13}{4}\right)$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 48
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  48,
  'English',
  'It is given that $\displaystyle y=-\frac{1}{2}x^2+ax+b$ has its vertex at $(4,10)$. Find the values of $a$ and $b$.',
  'It is given that $\displaystyle y=-\frac{1}{2}x^2+ax+b$ has its vertex at $(4,10)$. Find the values of $a$ and $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 48 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 48 AND language = 'English'),
  '\begin{flalign*}
    y&=-\frac{1}{2}x^2+ax+b\\
    &=-\frac{1}{2}\left(x^2-2ax\right)+b\\
    &=-\frac{1}{2}\left(x^2-2(x)(a)+a^2-a^2\right)+b\\
    &=-\frac{1}{2}(x-a)^2+\frac{a^2}{2}+b
\end{flalign*}
Therefore, we have
\begin{flalign}
    a&=4\tag{1}\\
    \frac{a^2}{2}+b&=10 \tag{2}
\end{flalign}
Substituting $(1)$ into $(2)$, we have
\begin{flalign*}
    \frac{4^2}{2}+b&=10\\
    8+b&=10\\
    b&=2
\end{flalign*}
Therefore, we have $(a,b)=(4,2)$.',
  '\begin{flalign*}
    y&=-\frac{1}{2}x^2+ax+b\\
    &=-\frac{1}{2}\left(x^2-2ax\right)+b\\
    &=-\frac{1}{2}\left(x^2-2(x)(a)+a^2-a^2\right)+b\\
    &=-\frac{1}{2}(x-a)^2+\frac{a^2}{2}+b
\end{flalign*}
Therefore, we have
\begin{flalign}
    a&=4\tag{1}\\
    \frac{a^2}{2}+b&=10 \tag{2}
\end{flalign}
Substituting $(1)$ into $(2)$, we have
\begin{flalign*}
    \frac{4^2}{2}+b&=10\\
    8+b&=10\\
    b&=2
\end{flalign*}
Therefore, we have $(a,b)=(4,2)$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 49
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  49,
  'English',
  'It is given that $y=2x^2+ax+b$ has its vertex at $(2,-3)$. Find the values of $a$ and $b$.',
  'It is given that $y=2x^2+ax+b$ has its vertex at $(2,-3)$. Find the values of $a$ and $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 49 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 49 AND language = 'English'),
  '\begin{flalign*}
    y&=2x^2+ax+b\\
    &=2\left(x^2+\frac{a}{2}x\right)+b\\
    &=2\left(x^2+2(x)\left(\frac{a}{4}\right)+\left(\frac{a}{4}\right)^2-\left(\frac{a}{4}\right)^2\right)+b\\
    &=2\left(x+\frac{a}{4}\right)^2-2\left(\frac{a}{4}\right)^2+b\\
    &=2\left(x+\frac{a}{4}\right)^2-\frac{a^2}{8}+b
\end{flalign*}
Therefore, we have
\begin{flalign}
    -\frac{a}{4}&=2 \tag{1}\\
    -\frac{a^2}{8}+b&=-3 \tag{2}
\end{flalign}
By $(1)$, we have $a=-8$.\\
Substituting $a=-8$ into $(2)$, we have 
\begin{flalign*}
    -\frac{(-8)^2}{8}+b&=-3\\
    -8+b&=-3\\
    b&=5
\end{flalign*}
Therefore, we have $(a,b)=(-8,5)$.',
  '\begin{flalign*}
    y&=2x^2+ax+b\\
    &=2\left(x^2+\frac{a}{2}x\right)+b\\
    &=2\left(x^2+2(x)\left(\frac{a}{4}\right)+\left(\frac{a}{4}\right)^2-\left(\frac{a}{4}\right)^2\right)+b\\
    &=2\left(x+\frac{a}{4}\right)^2-2\left(\frac{a}{4}\right)^2+b\\
    &=2\left(x+\frac{a}{4}\right)^2-\frac{a^2}{8}+b
\end{flalign*}
Therefore, we have
\begin{flalign}
    -\frac{a}{4}&=2 \tag{1}\\
    -\frac{a^2}{8}+b&=-3 \tag{2}
\end{flalign}
By $(1)$, we have $a=-8$.\\
Substituting $a=-8$ into $(2)$, we have 
\begin{flalign*}
    -\frac{(-8)^2}{8}+b&=-3\\
    -8+b&=-3\\
    b&=5
\end{flalign*}
Therefore, we have $(a,b)=(-8,5)$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 50
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  50,
  'English',
  'It is given that $y=ax^2-3x+b$ has its vertex at $\displaystyle \left(-\frac{1}{2},\frac{27}{4}\right)$. Find the values of $a$ and $b$.',
  'It is given that $y=ax^2-3x+b$ has its vertex at $\displaystyle \left(-\frac{1}{2},\frac{27}{4}\right)$. Find the values of $a$ and $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 50 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 50 AND language = 'English'),
  '\begin{flalign*}
    y&=ax^2-3x+b\\
    &=a\left(x^2-\frac{3}{a}x\right)+b\\
    &=a\left(x^2-2(x)\frac{3}{2a}+\left(\frac{3}{2a}\right)^2-\left(\frac{3}{2a}\right)^2\right)+b\\
    &=a\left(x-\frac{3}{2a}\right)^2-a\left(\frac{3}{2a}\right)^2+b\\
    &=a\left(x-\frac{3}{2a}\right)^2-\frac{9}{4a}+b
\end{flalign*}
Therefore, we have
\begin{flalign}
    \frac{3}{2a}&=-\frac{1}{2} \tag{1} \\
    -\frac{9}{4a}+b&=\frac{27}{4} \tag{2}
\end{flalign}
By $(1)$, we have $a=-3$.\\
Substituting $a=-3$ into $(2)$, we have
\begin{flalign*}
    -\frac{9}{4(-3)}+b&=\frac{27}{4}\\
    \frac{3}{4}+b&=\frac{27}{4}\\
    b&=6
\end{flalign*}
Therefore, we have $(a,b)=(-3,6)$.',
  '\begin{flalign*}
    y&=ax^2-3x+b\\
    &=a\left(x^2-\frac{3}{a}x\right)+b\\
    &=a\left(x^2-2(x)\frac{3}{2a}+\left(\frac{3}{2a}\right)^2-\left(\frac{3}{2a}\right)^2\right)+b\\
    &=a\left(x-\frac{3}{2a}\right)^2-a\left(\frac{3}{2a}\right)^2+b\\
    &=a\left(x-\frac{3}{2a}\right)^2-\frac{9}{4a}+b
\end{flalign*}
Therefore, we have
\begin{flalign}
    \frac{3}{2a}&=-\frac{1}{2} \tag{1} \\
    -\frac{9}{4a}+b&=\frac{27}{4} \tag{2}
\end{flalign}
By $(1)$, we have $a=-3$.\\
Substituting $a=-3$ into $(2)$, we have
\begin{flalign*}
    -\frac{9}{4(-3)}+b&=\frac{27}{4}\\
    \frac{3}{4}+b&=\frac{27}{4}\\
    b&=6
\end{flalign*}
Therefore, we have $(a,b)=(-3,6)$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 51
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  51,
  'English',
  'For the quadratic function $\displaystyle y=-\frac{1}{3}x^2+x-2$, find the coordinates of the vertex and the axis of symmetry of its graph.',
  'For the quadratic function $\displaystyle y=-\frac{1}{3}x^2+x-2$, find the coordinates of the vertex and the axis of symmetry of its graph.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 51 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 51 AND language = 'English'),
  '\begin{flalign*}
    y&=-\frac{1}{3}x^2+x-2\\
    &=-\frac{1}{3}\left(x^2-3x\right)-2\\
    &=-\frac{1}{3}\left(x^2-2(x)\left(\frac{3}{2}\right)+\left(\frac{3}{2}\right)^2-\left(\frac{3}{2}\right)^2\right)-2\\
    &=-\frac{1}{3}\left(x-\frac{3}{2}\right)^2+\frac{1}{3}\left(\frac{3}{2}\right)^2-2\\
    &=-\frac{1}{3}\left(x-\frac{3}{2}\right)^2+\frac{3}{4}-2\\
    &=-\frac{1}{3}\left(x-\frac{3}{2}\right)^2-\frac{5}{4}
\end{flalign*}
Therefore, the coordinates of the vertex are $\displaystyle \left(\frac{3}{2},-\frac{5}{4}\right)$ and the axis of symmetry is $\displaystyle x=\frac{3}{2}$.',
  '\begin{flalign*}
    y&=-\frac{1}{3}x^2+x-2\\
    &=-\frac{1}{3}\left(x^2-3x\right)-2\\
    &=-\frac{1}{3}\left(x^2-2(x)\left(\frac{3}{2}\right)+\left(\frac{3}{2}\right)^2-\left(\frac{3}{2}\right)^2\right)-2\\
    &=-\frac{1}{3}\left(x-\frac{3}{2}\right)^2+\frac{1}{3}\left(\frac{3}{2}\right)^2-2\\
    &=-\frac{1}{3}\left(x-\frac{3}{2}\right)^2+\frac{3}{4}-2\\
    &=-\frac{1}{3}\left(x-\frac{3}{2}\right)^2-\frac{5}{4}
\end{flalign*}
Therefore, the coordinates of the vertex are $\displaystyle \left(\frac{3}{2},-\frac{5}{4}\right)$ and the axis of symmetry is $\displaystyle x=\frac{3}{2}$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 52
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  52,
  'English',
  'For the quadratic function $y=(x+1)(x-2)+7$, find the coordinates of the vertex and the axis of symmetry of its graph.',
  'For the quadratic function $y=(x+1)(x-2)+7$, find the coordinates of the vertex and the axis of symmetry of its graph.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 52 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 52 AND language = 'English'),
  '\begin{flalign*}
    y&=(x+1)(x-2)+7\\
    &=x^2-x-2+7\\
    &=x^2-x+5\\
    &=x^2-2(x)\left(\frac{1}{2}\right)+\left(\frac{1}{2}\right)^2-\left(\frac{1}{2}\right)^2+5\\
    &=\left(x-\frac{1}{2}\right)^2-\frac{1}{4}+5\\
    &=\left(x-\frac{1}{2}\right)^2+\frac{19}{4}
\end{flalign*}
Therefore, the coordinates of the vertex are $\displaystyle \left(\frac{1}{2},\frac{19}{4}\right)$ and the axis of symmetry is $\displaystyle x=\frac{1}{2}$.',
  '\begin{flalign*}
    y&=(x+1)(x-2)+7\\
    &=x^2-x-2+7\\
    &=x^2-x+5\\
    &=x^2-2(x)\left(\frac{1}{2}\right)+\left(\frac{1}{2}\right)^2-\left(\frac{1}{2}\right)^2+5\\
    &=\left(x-\frac{1}{2}\right)^2-\frac{1}{4}+5\\
    &=\left(x-\frac{1}{2}\right)^2+\frac{19}{4}
\end{flalign*}
Therefore, the coordinates of the vertex are $\displaystyle \left(\frac{1}{2},\frac{19}{4}\right)$ and the axis of symmetry is $\displaystyle x=\frac{1}{2}$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 53
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  53,
  'English',
  'For the quadratic function $y=-x(x+3)-5$, find the coordinates of the vertex and the axis of symmetry of its graph.',
  'For the quadratic function $y=-x(x+3)-5$, find the coordinates of the vertex and the axis of symmetry of its graph.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 53 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 53 AND language = 'English'),
  '\begin{flalign*}
    y&=-x(x+3)-5\\
    &=-x^2-3x-5\\
    &=-\left(x^2+3x\right)-5\\
    &=-\left(x^2+2(x)\left(\frac{3}{2}\right)+\left(\frac{3}{2}\right)^2-\left(\frac{3}{2}\right)^2\right)-5\\
    &=-\left(x+\frac{3}{2}\right)^2+\left(\frac{3}{2}\right)^2-5\\
    &=-\left(x+\frac{3}{2}\right)^2+\frac{9}{4}-5\\
    &=-\left(x+\frac{3}{2}\right)^2-\frac{11}{4}
\end{flalign*}
Therefore, the coordinates of the vertex are $\displaystyle \left(-\frac{3}{2},-\frac{11}{4}\right)$ and the axis of symmetry is $\displaystyle x=-\frac{3}{2}$.',
  '\begin{flalign*}
    y&=-x(x+3)-5\\
    &=-x^2-3x-5\\
    &=-\left(x^2+3x\right)-5\\
    &=-\left(x^2+2(x)\left(\frac{3}{2}\right)+\left(\frac{3}{2}\right)^2-\left(\frac{3}{2}\right)^2\right)-5\\
    &=-\left(x+\frac{3}{2}\right)^2+\left(\frac{3}{2}\right)^2-5\\
    &=-\left(x+\frac{3}{2}\right)^2+\frac{9}{4}-5\\
    &=-\left(x+\frac{3}{2}\right)^2-\frac{11}{4}
\end{flalign*}
Therefore, the coordinates of the vertex are $\displaystyle \left(-\frac{3}{2},-\frac{11}{4}\right)$ and the axis of symmetry is $\displaystyle x=-\frac{3}{2}$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 54
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  54,
  'English',
  'For the quadratic function $y=(x+4)^2+(x-3)^2$, find the coordinates of the vertex and the axis of symmetry of its graph.',
  'For the quadratic function $y=(x+4)^2+(x-3)^2$, find the coordinates of the vertex and the axis of symmetry of its graph.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 54 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 54 AND language = 'English'),
  '\begin{flalign*}
    y&=(x+4)^2+(x-3)^2\\
    &=x^2+8x+16+x^2-6x+9\\
    &=2x^2+2x+25\\
    &=2\left(x^2+x\right)+25\\
    &=2\left(x^2+2(x)\left(\frac{1}{2}\right)+\left(\frac{1}{2}\right)^2-\left(\frac{1}{2}\right)^2\right)+25\\
    &=2\left(x+\frac{1}{2}\right)^2-2\left(\frac{1}{2}\right)^2+25\\
    &=2\left(x+\frac{1}{2}\right)^2-\frac{1}{2}+25\\
    &=2\left(x+\frac{1}{2}\right)^2+\frac{49}{2}
\end{flalign*}
Therefore, the coordinates of the vertex are $\displaystyle \left(-\frac{1}{2},\frac{49}{2}\right)$ and the axis of symmetry is $\displaystyle x=-\frac{1}{2}$.',
  '\begin{flalign*}
    y&=(x+4)^2+(x-3)^2\\
    &=x^2+8x+16+x^2-6x+9\\
    &=2x^2+2x+25\\
    &=2\left(x^2+x\right)+25\\
    &=2\left(x^2+2(x)\left(\frac{1}{2}\right)+\left(\frac{1}{2}\right)^2-\left(\frac{1}{2}\right)^2\right)+25\\
    &=2\left(x+\frac{1}{2}\right)^2-2\left(\frac{1}{2}\right)^2+25\\
    &=2\left(x+\frac{1}{2}\right)^2-\frac{1}{2}+25\\
    &=2\left(x+\frac{1}{2}\right)^2+\frac{49}{2}
\end{flalign*}
Therefore, the coordinates of the vertex are $\displaystyle \left(-\frac{1}{2},\frac{49}{2}\right)$ and the axis of symmetry is $\displaystyle x=-\frac{1}{2}$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 55
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  55,
  'English',
  'For the quadratic function $y=2x^2+3x-4$, find the coordinates of the vertex and the axis of symmetry of its graph.',
  'For the quadratic function $y=2x^2+3x-4$, find the coordinates of the vertex and the axis of symmetry of its graph.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 55 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 55 AND language = 'English'),
  '\begin{flalign*}
    y&=2x^2+3x-4\\
    &=2\left(x^2+\frac{3}{2}x\right)-4\\
    &=2\left(x^2+2(x)\left(\frac{3}{4}\right)+\left(\frac{3}{4}\right)^2-\left(\frac{3}{4}\right)^2\right)-4\\
    &=2\left(x+\frac{3}{4}\right)^2-2\left(\frac{3}{4}\right)^2-4\\
    &=2\left(x+\frac{3}{4}\right)^2-\frac{9}{8}-4\\
    &=2\left(x+\frac{3}{4}\right)^2-\frac{41}{8}
\end{flalign*}
Therefore, the coordinates of the vertex are $\displaystyle \left(-\frac{3}{4},-\frac{41}{8}\right)$ and the axis of symmetry is $\displaystyle x=-\frac{3}{4}$.',
  '\begin{flalign*}
    y&=2x^2+3x-4\\
    &=2\left(x^2+\frac{3}{2}x\right)-4\\
    &=2\left(x^2+2(x)\left(\frac{3}{4}\right)+\left(\frac{3}{4}\right)^2-\left(\frac{3}{4}\right)^2\right)-4\\
    &=2\left(x+\frac{3}{4}\right)^2-2\left(\frac{3}{4}\right)^2-4\\
    &=2\left(x+\frac{3}{4}\right)^2-\frac{9}{8}-4\\
    &=2\left(x+\frac{3}{4}\right)^2-\frac{41}{8}
\end{flalign*}
Therefore, the coordinates of the vertex are $\displaystyle \left(-\frac{3}{4},-\frac{41}{8}\right)$ and the axis of symmetry is $\displaystyle x=-\frac{3}{4}$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 56
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  56,
  'English',
  'For the quadratic function $\displaystyle y=-\frac{1}{2}x^2-x+3$, find its optimum value and state whether the value is a maximum or a minimum.',
  'For the quadratic function $\displaystyle y=-\frac{1}{2}x^2-x+3$, find its optimum value and state whether the value is a maximum or a minimum.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 56 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 56 AND language = 'English'),
  '\begin{flalign*}
    y&=-\frac{1}{2}x^2-x+3\\
    &=-\frac{1}{2}\left(x^2+2x\right)+3\\
    &=-\frac{1}{2}\left(x^2+2(x)(1)+1^2-1^2\right)+3\\
    &=-\frac{1}{2}(x+1)^2+\frac{1}{2}+3\\
    &=-\frac{1}{2}(x+1)^2+\frac{7}{2}
\end{flalign*}
Therefore, the optimum value is $\displaystyle \frac{7}{2}$, and since the quadratic function is open downwards, the value is a maximum value.',
  '\begin{flalign*}
    y&=-\frac{1}{2}x^2-x+3\\
    &=-\frac{1}{2}\left(x^2+2x\right)+3\\
    &=-\frac{1}{2}\left(x^2+2(x)(1)+1^2-1^2\right)+3\\
    &=-\frac{1}{2}(x+1)^2+\frac{1}{2}+3\\
    &=-\frac{1}{2}(x+1)^2+\frac{7}{2}
\end{flalign*}
Therefore, the optimum value is $\displaystyle \frac{7}{2}$, and since the quadratic function is open downwards, the value is a maximum value.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 57
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  57,
  'English',
  'For the quadratic function $ y=x(x+3)-7$, find its optimum value and state whether the value is a maximum or a minimum.',
  'For the quadratic function $ y=x(x+3)-7$, find its optimum value and state whether the value is a maximum or a minimum.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 57 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 57 AND language = 'English'),
  '\begin{flalign*}
    y&=x(x+3)-7\\
    &=x^2+3x-7\\
    &=x^2+2(x)\left(\frac{3}{2}\right)+\left(\frac{3}{2}\right)^2-\left(\frac{3}{2}\right)^2-7\\
    &=\left(x+\frac{3}{2}\right)^2-\frac{9}{4}-7\\
    &=\left(x+\frac{3}{2}\right)^2-\frac{37}{4}
\end{flalign*}
Therefore, the optimum value is $\displaystyle -\frac{37}{4}$, and since the quadratic function is open upwards, the value is a minimum value.',
  '\begin{flalign*}
    y&=x(x+3)-7\\
    &=x^2+3x-7\\
    &=x^2+2(x)\left(\frac{3}{2}\right)+\left(\frac{3}{2}\right)^2-\left(\frac{3}{2}\right)^2-7\\
    &=\left(x+\frac{3}{2}\right)^2-\frac{9}{4}-7\\
    &=\left(x+\frac{3}{2}\right)^2-\frac{37}{4}
\end{flalign*}
Therefore, the optimum value is $\displaystyle -\frac{37}{4}$, and since the quadratic function is open upwards, the value is a minimum value.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 58
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  58,
  'English',
  'For the quadratic function $ y=(x+3)(2-x)+5x-3$, find its optimum value and state whether the value is a maximum or a minimum.',
  'For the quadratic function $ y=(x+3)(2-x)+5x-3$, find its optimum value and state whether the value is a maximum or a minimum.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 58 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 58 AND language = 'English'),
  '\begin{flalign*}
    y&=(x+3)(2-x)+5x-3\\
    &=-x^2-x+6+5x-3\\
    &=-x^2+4x+3\\
    &=-\left(x^2-4x\right)+3\\
    &=-\left(x^2-2(x)(2)+2^2-2^2\right)+3\\
    &=-(x-2)^2+2^2+3\\
    &=-(x-2)^2+7
\end{flalign*}
Therefore, the optimum value is $7$, and since the quadratic function is open downwards, the value is a maximum value.',
  '\begin{flalign*}
    y&=(x+3)(2-x)+5x-3\\
    &=-x^2-x+6+5x-3\\
    &=-x^2+4x+3\\
    &=-\left(x^2-4x\right)+3\\
    &=-\left(x^2-2(x)(2)+2^2-2^2\right)+3\\
    &=-(x-2)^2+2^2+3\\
    &=-(x-2)^2+7
\end{flalign*}
Therefore, the optimum value is $7$, and since the quadratic function is open downwards, the value is a maximum value.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 59
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  59,
  'English',
  'For the quadratic function $ y=(x+2)^2+(x+8)^2$, find its optimum value and state whether the value is a maximum or a minimum.',
  'For the quadratic function $ y=(x+2)^2+(x+8)^2$, find its optimum value and state whether the value is a maximum or a minimum.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 59 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 59 AND language = 'English'),
  '\begin{flalign*}
    y&=(x+2)^2+(x+8)^2\\
    &=x^2+4x+4+x^2+16x+64\\
    &=2x^2+20x+68\\
    &=2\left(x^2+10x\right)+68\\
    &=2\left(x^2+2(x)(5)+5^2-5^2\right)+68\\
    &=2(x+5)^2-2\left(5^2\right)+68\\
    &=2(x+5)^2-50+68\\
    &=2(x+5)^2+18
\end{flalign*}
Therefore, the optimum value is $18$, and since the quadratic function is open upwards, the value is a minimum value.',
  '\begin{flalign*}
    y&=(x+2)^2+(x+8)^2\\
    &=x^2+4x+4+x^2+16x+64\\
    &=2x^2+20x+68\\
    &=2\left(x^2+10x\right)+68\\
    &=2\left(x^2+2(x)(5)+5^2-5^2\right)+68\\
    &=2(x+5)^2-2\left(5^2\right)+68\\
    &=2(x+5)^2-50+68\\
    &=2(x+5)^2+18
\end{flalign*}
Therefore, the optimum value is $18$, and since the quadratic function is open upwards, the value is a minimum value.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 60
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  60,
  'English',
  'For the quadratic function $ y=-3x^2+4x-5$, find its optimum value and state whether the value is a maximum or a minimum.',
  'For the quadratic function $ y=-3x^2+4x-5$, find its optimum value and state whether the value is a maximum or a minimum.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 60 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 60 AND language = 'English'),
  '\begin{flalign*}
    y&=-3x^2+4x-5\\
    &=-3\left(x^2-\frac{4}{3}x\right)-5\\
    &=-3\left(x^2-2(x)\left(\frac{2}{3}\right)+\left(\frac{2}{3}\right)^2-\left(\frac{2}{3}\right)^2\right)-5\\
    &=-3\left(x-\frac{2}{3}\right)^2+3\left(\frac{2}{3}\right)^2-5\\
    &=-3\left(x-\frac{2}{3}\right)^2+\frac{4}{3}-5\\
    &=-3\left(x-\frac{2}{3}\right)^2+\frac{11}{3}
\end{flalign*}
Therefore, the optimum value is $\displaystyle -\frac{11}{3}$, and since the quadratic function is open downwards, the value is a maximum value.',
  '\begin{flalign*}
    y&=-3x^2+4x-5\\
    &=-3\left(x^2-\frac{4}{3}x\right)-5\\
    &=-3\left(x^2-2(x)\left(\frac{2}{3}\right)+\left(\frac{2}{3}\right)^2-\left(\frac{2}{3}\right)^2\right)-5\\
    &=-3\left(x-\frac{2}{3}\right)^2+3\left(\frac{2}{3}\right)^2-5\\
    &=-3\left(x-\frac{2}{3}\right)^2+\frac{4}{3}-5\\
    &=-3\left(x-\frac{2}{3}\right)^2+\frac{11}{3}
\end{flalign*}
Therefore, the optimum value is $\displaystyle -\frac{11}{3}$, and since the quadratic function is open downwards, the value is a maximum value.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 61
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  61,
  'English',
  'The $y$-intercept of the graph of $y=(x+3)(x+k)-k$ is $6$. Find the value of $k$.',
  'The $y$-intercept of the graph of $y=(x+3)(x+k)-k$ is $6$. Find the value of $k$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 61 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 61 AND language = 'English'),
  'Substituting $x=0$ and $y=6$ into the function, we have
\begin{flalign*}
    6&=(0+3)(0+k)-k\\
    6&=3k-k\\
    2k&=6\\
    k&=3
\end{flalign*}',
  'Substituting $x=0$ and $y=6$ into the function, we have
\begin{flalign*}
    6&=(0+3)(0+k)-k\\
    6&=3k-k\\
    2k&=6\\
    k&=3
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 62
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  62,
  'English',
  'The $y$-intercept of the graph of $y=(x-2)(x+a)+4a$ is $-10$. Find the value of $a$.',
  'The $y$-intercept of the graph of $y=(x-2)(x+a)+4a$ is $-10$. Find the value of $a$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 62 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 62 AND language = 'English'),
  'Substituting $x=0$ and $y=-10$ into the function, we have
\begin{flalign*}
    -10&=(0-2)(0+a)+4a\\
    -10&=-2a+4a\\
    2a&=-10\\
    a&=-5
\end{flalign*}',
  'Substituting $x=0$ and $y=-10$ into the function, we have
\begin{flalign*}
    -10&=(0-2)(0+a)+4a\\
    -10&=-2a+4a\\
    2a&=-10\\
    a&=-5
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 63
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  63,
  'English',
  'The $y$-intercept of the graph of $y=(x+1)(x+b)+b$ is $8$. Find the value of $b$.',
  'The $y$-intercept of the graph of $y=(x+1)(x+b)+b$ is $8$. Find the value of $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 63 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 63 AND language = 'English'),
  'Substituting $x=0$ and $y=8$ into the function, we have
\begin{flalign*}
    8&=(0+1)(0+b)+b\\
    8&=b+b\\
    2b&=8\\
    b&=4
\end{flalign*}',
  'Substituting $x=0$ and $y=8$ into the function, we have
\begin{flalign*}
    8&=(0+1)(0+b)+b\\
    8&=b+b\\
    2b&=8\\
    b&=4
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 64
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  64,
  'English',
  'The $y$-intercept of the graph of $y=(x+5)(x+c)-4c$ is $7$. Find the value of $c$.',
  'The $y$-intercept of the graph of $y=(x+5)(x+c)-4c$ is $7$. Find the value of $c$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 64 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 64 AND language = 'English'),
  'Substituting $x=0$ and $y=7$ into the function, we have
\begin{flalign*}
    7&=(0+5)(0+c)-4c\\
    7&=5c-4c\\
    c&=7
\end{flalign*}',
  'Substituting $x=0$ and $y=7$ into the function, we have
\begin{flalign*}
    7&=(0+5)(0+c)-4c\\
    7&=5c-4c\\
    c&=7
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 65
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  65,
  'English',
  'The $y$-intercept of the graph of $y=(x+6)(x+m)+2m$ is $16$. Find the value of $m$.',
  'The $y$-intercept of the graph of $y=(x+6)(x+m)+2m$ is $16$. Find the value of $m$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 65 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 65 AND language = 'English'),
  'Substituting $x=0$ and $y=16$ into the function, we have
\begin{flalign*}
    16&=(0+6)(0+m)+2m\\
    16&=6m+2m\\
    8m&=16\\
    m&=2
\end{flalign*}',
  'Substituting $x=0$ and $y=16$ into the function, we have
\begin{flalign*}
    16&=(0+6)(0+m)+2m\\
    16&=6m+2m\\
    8m&=16\\
    m&=2
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 66
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  66,
  'English',
  'The function $y=(x+1)(4-3x)+2x-k$ has an optimum value $5$. Find the value of $k$.',
  'The function $y=(x+1)(4-3x)+2x-k$ has an optimum value $5$. Find the value of $k$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 66 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 66 AND language = 'English'),
  '\begin{flalign*}
    y&=(x+1)(4-3x)+2x-k\\
    &=-3x^2+x+4+2x-k\\
    &=-3x^2+3x+4-k\\
    &=-3\left(x^2-x\right)+4-k\\
    &=-3\left(x^2-2(x)\left(\frac{1}{2}\right)+\left(\frac{1}{2}\right)^2-\left(\frac{1}{2}\right)^2\right)+4-k\\
    &=-3\left(x-\frac{1}{2}\right)^2+3\left(\frac{1}{2}\right)^2+4-k\\
    &=-3\left(x-\frac{1}{2}\right)^2+\frac{3}{4}+4-k\\
    &=-3\left(x-\frac{1}{2}\right)^2+\frac{19}{4}-k
\end{flalign*}
Therefore, we have
\begin{flalign*}
    \frac{19}{4}-k&=5\\
    k&=-\frac{1}{4}
\end{flalign*}',
  '\begin{flalign*}
    y&=(x+1)(4-3x)+2x-k\\
    &=-3x^2+x+4+2x-k\\
    &=-3x^2+3x+4-k\\
    &=-3\left(x^2-x\right)+4-k\\
    &=-3\left(x^2-2(x)\left(\frac{1}{2}\right)+\left(\frac{1}{2}\right)^2-\left(\frac{1}{2}\right)^2\right)+4-k\\
    &=-3\left(x-\frac{1}{2}\right)^2+3\left(\frac{1}{2}\right)^2+4-k\\
    &=-3\left(x-\frac{1}{2}\right)^2+\frac{3}{4}+4-k\\
    &=-3\left(x-\frac{1}{2}\right)^2+\frac{19}{4}-k
\end{flalign*}
Therefore, we have
\begin{flalign*}
    \frac{19}{4}-k&=5\\
    k&=-\frac{1}{4}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 67
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  67,
  'English',
  'The function $y=(3x+1)(6-5x)+2x-a$ has an optimum value $7$. Find the value of $a$.',
  'The function $y=(3x+1)(6-5x)+2x-a$ has an optimum value $7$. Find the value of $a$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 67 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 67 AND language = 'English'),
  '\begin{flalign*}
    y&=(3x+1)(6-5x)+2x-a\\
    &=-15x^2+13x+6+2x-a\\
    &=-15x^2+15x+6-a\\
    &=-15\left(x^2-x\right)+6-a\\
    &=-15\left(x^2-2(x)\left(\frac{1}{2}\right)+\left(\frac{1}{2}\right)^2-\left(\frac{1}{2}\right)^2\right)+6-a\\
    &=-15\left(x-\frac{1}{2}\right)^2+15\left(\frac{1}{2}\right)^2+6-a\\
    &=-15\left(x-\frac{1}{2}\right)^2+\frac{15}{4}+6-a\\
    &=-15\left(x-\frac{1}{2}\right)^2+\frac{39}{4}-a
\end{flalign*}
Therefore, we have
\begin{flalign*}
    \frac{39}{4}-a&=7\\
    a&=\frac{11}{4}
\end{flalign*}',
  '\begin{flalign*}
    y&=(3x+1)(6-5x)+2x-a\\
    &=-15x^2+13x+6+2x-a\\
    &=-15x^2+15x+6-a\\
    &=-15\left(x^2-x\right)+6-a\\
    &=-15\left(x^2-2(x)\left(\frac{1}{2}\right)+\left(\frac{1}{2}\right)^2-\left(\frac{1}{2}\right)^2\right)+6-a\\
    &=-15\left(x-\frac{1}{2}\right)^2+15\left(\frac{1}{2}\right)^2+6-a\\
    &=-15\left(x-\frac{1}{2}\right)^2+\frac{15}{4}+6-a\\
    &=-15\left(x-\frac{1}{2}\right)^2+\frac{39}{4}-a
\end{flalign*}
Therefore, we have
\begin{flalign*}
    \frac{39}{4}-a&=7\\
    a&=\frac{11}{4}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 68
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  68,
  'English',
  'The function $y=(x-4)(2x+5)+3x-b$ has an optimum value $20$. Find the value of $b$.',
  'The function $y=(x-4)(2x+5)+3x-b$ has an optimum value $20$. Find the value of $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 68 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 68 AND language = 'English'),
  '\begin{flalign*}
    y&=(x-4)(2x+5)+3x-b\\
    &=2x^2-3x-20+3x-b\\
    &=2x^2-20-b
\end{flalign*}
Therefore, we have
\begin{flalign*}
    -20-b&=20\\
    b&=-40
\end{flalign*}',
  '\begin{flalign*}
    y&=(x-4)(2x+5)+3x-b\\
    &=2x^2-3x-20+3x-b\\
    &=2x^2-20-b
\end{flalign*}
Therefore, we have
\begin{flalign*}
    -20-b&=20\\
    b&=-40
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 69
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  69,
  'English',
  'The function $y=(3x-2)(4-2x)+2x-c$ has an optimum value $6$. Find the value of $c$.',
  'The function $y=(3x-2)(4-2x)+2x-c$ has an optimum value $6$. Find the value of $c$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 69 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 69 AND language = 'English'),
  '\begin{flalign*}
    y&=(3x-2)(4-2x)+2x-c\\
    &=-6x^2+16x-8+2x-c\\
    &=-6x^2+18x-8-c\\
    &=-6\left(x^2-3x\right)-8-c\\
    &=-6\left(x^2-2(x)\left(\frac{3}{2}\right)+\left(\frac{3}{2}\right)^2-\left(\frac{3}{2}\right)^2\right)-8-c\\
    &=-6\left(x-\frac{3}{2}\right)^2+6\left(\frac{3}{2}\right)^2-8-c\\
    &=-6\left(x-\frac{3}{2}\right)^2+\frac{27}{2}-8-c\\
    &=-6\left(x-\frac{3}{2}\right)^2+\frac{11}{2}-c
\end{flalign*}
Therefore, we have
\begin{flalign*}
    \frac{11}{2}-c&=6\\
    c&=-\frac{1}{2}
\end{flalign*}',
  '\begin{flalign*}
    y&=(3x-2)(4-2x)+2x-c\\
    &=-6x^2+16x-8+2x-c\\
    &=-6x^2+18x-8-c\\
    &=-6\left(x^2-3x\right)-8-c\\
    &=-6\left(x^2-2(x)\left(\frac{3}{2}\right)+\left(\frac{3}{2}\right)^2-\left(\frac{3}{2}\right)^2\right)-8-c\\
    &=-6\left(x-\frac{3}{2}\right)^2+6\left(\frac{3}{2}\right)^2-8-c\\
    &=-6\left(x-\frac{3}{2}\right)^2+\frac{27}{2}-8-c\\
    &=-6\left(x-\frac{3}{2}\right)^2+\frac{11}{2}-c
\end{flalign*}
Therefore, we have
\begin{flalign*}
    \frac{11}{2}-c&=6\\
    c&=-\frac{1}{2}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 70
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  70,
  'English',
  'The function $y=(5x-4)(2-x)+x-m$ has an optimum value $0$. Find the value of $m$.',
  'The function $y=(5x-4)(2-x)+x-m$ has an optimum value $0$. Find the value of $m$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 70 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 70 AND language = 'English'),
  '\begin{flalign*}
    y&=(5x-4)(2-x)+x-m\\
    &=-5x^2+14x-8+x-m\\
    &=-5x^2+15x-8-m\\
    &=-5(x^2-3x)-8-m\\
    &=-5\left(x^2-2(x)\left(\frac{3}{2}\right)+\left(\frac{3}{2}\right)^2-\left(\frac{3}{2}\right)^2\right)-8-m\\
    &=-5\left(x-\frac{3}{2}\right)^2+5\left(\frac{3}{2}\right)^2-8-m\\
    &=-5\left(x-\frac{3}{2}\right)^2+\frac{45}{4}-8-m\\
    &=-5\left(x-\frac{3}{2}\right)^2+\frac{13}{4}-m
\end{flalign*}
Therefore, we have
\begin{flalign*}
    \frac{13}{4}-m&=0\\
    m&=\frac{13}{4}
\end{flalign*}',
  '\begin{flalign*}
    y&=(5x-4)(2-x)+x-m\\
    &=-5x^2+14x-8+x-m\\
    &=-5x^2+15x-8-m\\
    &=-5(x^2-3x)-8-m\\
    &=-5\left(x^2-2(x)\left(\frac{3}{2}\right)+\left(\frac{3}{2}\right)^2-\left(\frac{3}{2}\right)^2\right)-8-m\\
    &=-5\left(x-\frac{3}{2}\right)^2+5\left(\frac{3}{2}\right)^2-8-m\\
    &=-5\left(x-\frac{3}{2}\right)^2+\frac{45}{4}-8-m\\
    &=-5\left(x-\frac{3}{2}\right)^2+\frac{13}{4}-m
\end{flalign*}
Therefore, we have
\begin{flalign*}
    \frac{13}{4}-m&=0\\
    m&=\frac{13}{4}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 71
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  71,
  'English',
  'The axis of symmetry of the graph $y=x^2-kx+5$ is $x=3$. Find the value of $k$.',
  'The axis of symmetry of the graph $y=x^2-kx+5$ is $x=3$. Find the value of $k$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 71 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 71 AND language = 'English'),
  '\begin{flalign*}
    y&=x^2-kx+5\\
    &=x^2-2(x)\left(\frac{k}{2}\right)+\left(\frac{k}{2}\right)^2-\left(\frac{k}{2}\right)^2+5\\
    &=\left(x-\frac{k}{2}\right)^2-\left(\frac{k}{2}\right)^2+5
\end{flalign*}
Therefore, we have
\begin{flalign*}
    \frac{k}{2}&=3\\
    k&=6
\end{flalign*}',
  '\begin{flalign*}
    y&=x^2-kx+5\\
    &=x^2-2(x)\left(\frac{k}{2}\right)+\left(\frac{k}{2}\right)^2-\left(\frac{k}{2}\right)^2+5\\
    &=\left(x-\frac{k}{2}\right)^2-\left(\frac{k}{2}\right)^2+5
\end{flalign*}
Therefore, we have
\begin{flalign*}
    \frac{k}{2}&=3\\
    k&=6
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 72
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  72,
  'English',
  'The axis of symmetry of the graph $y=5x^2-ax-3$ is $\displaystyle x=\frac{1}{2}$. Find the value of $a$.',
  'The axis of symmetry of the graph $y=5x^2-ax-3$ is $\displaystyle x=\frac{1}{2}$. Find the value of $a$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 72 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 72 AND language = 'English'),
  '\begin{flalign*}
    y&=5x^2-ax-3\\
    &=5\left(x^2-\frac{a}{5}x\right)-3\\
    &=5\left(x^2-2(x)\left(\frac{a}{10}\right)+\left(\frac{a}{10}\right)^2-\left(\frac{a}{10}\right)^2\right)-3\\
    &=5\left(x-\frac{a}{10}\right)^2-5\left(\frac{a}{10}\right)^2-3
\end{flalign*}
Therefore, we have
\begin{flalign*}
    \frac{a}{10}&=\frac{1}{2}\\
    a&=5
\end{flalign*}',
  '\begin{flalign*}
    y&=5x^2-ax-3\\
    &=5\left(x^2-\frac{a}{5}x\right)-3\\
    &=5\left(x^2-2(x)\left(\frac{a}{10}\right)+\left(\frac{a}{10}\right)^2-\left(\frac{a}{10}\right)^2\right)-3\\
    &=5\left(x-\frac{a}{10}\right)^2-5\left(\frac{a}{10}\right)^2-3
\end{flalign*}
Therefore, we have
\begin{flalign*}
    \frac{a}{10}&=\frac{1}{2}\\
    a&=5
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 73
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  73,
  'English',
  'The axis of symmetry of the graph $y=-x^2-bx+7$ is $x=-3$. Find the value of $b$.',
  'The axis of symmetry of the graph $y=-x^2-bx+7$ is $x=-3$. Find the value of $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 73 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 73 AND language = 'English'),
  '\begin{flalign*}
    y&=-x^2-bx+7\\
    &=-\left(x^2+bx\right)+7\\
    &=-\left(x^2+2(x)\left(\frac{b}{2}\right)+\left(\frac{b}{2}\right)^2-\left(\frac{b}{2}\right)^2\right)+7\\
    &=-\left(x^2+\frac{b}{2}\right)^2+\left(\frac{b}{2}\right)^2+7
\end{flalign*}
Therefore, we have
\begin{flalign*}
    -\frac{b}{2}&=-3\\
    b&=6
\end{flalign*}',
  '\begin{flalign*}
    y&=-x^2-bx+7\\
    &=-\left(x^2+bx\right)+7\\
    &=-\left(x^2+2(x)\left(\frac{b}{2}\right)+\left(\frac{b}{2}\right)^2-\left(\frac{b}{2}\right)^2\right)+7\\
    &=-\left(x^2+\frac{b}{2}\right)^2+\left(\frac{b}{2}\right)^2+7
\end{flalign*}
Therefore, we have
\begin{flalign*}
    -\frac{b}{2}&=-3\\
    b&=6
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 74
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  74,
  'English',
  'The axis of symmetry of the graph $y=-3x^2-cx+9$ is $x=2$. Find the value of $c$.',
  'The axis of symmetry of the graph $y=-3x^2-cx+9$ is $x=2$. Find the value of $c$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 74 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 74 AND language = 'English'),
  '\begin{flalign*}
    y&=-3x^2-cx+9\\
    &=-3\left(x^2+\frac{c}{3}x\right)+9\\
    &=-3\left(x^2+2(x)\left(\frac{c}{6}\right)+\left(\frac{c}{6}\right)^2-\left(\frac{c}{6}\right)^2\right)+9\\
    &=-3\left(x+\frac{c}{6}\right)^2+3\left(\frac{c}{6}\right)^2+9
\end{flalign*}
Therefore, we have
\begin{flalign*}
    -\frac{c}{6}&=2\\
    c&=-12
\end{flalign*}',
  '\begin{flalign*}
    y&=-3x^2-cx+9\\
    &=-3\left(x^2+\frac{c}{3}x\right)+9\\
    &=-3\left(x^2+2(x)\left(\frac{c}{6}\right)+\left(\frac{c}{6}\right)^2-\left(\frac{c}{6}\right)^2\right)+9\\
    &=-3\left(x+\frac{c}{6}\right)^2+3\left(\frac{c}{6}\right)^2+9
\end{flalign*}
Therefore, we have
\begin{flalign*}
    -\frac{c}{6}&=2\\
    c&=-12
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 75
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  75,
  'English',
  'The axis of symmetry of the graph $y=4x^2-mx-8$ is $x=-1$. Find the value of $m$.',
  'The axis of symmetry of the graph $y=4x^2-mx-8$ is $x=-1$. Find the value of $m$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 75 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 75 AND language = 'English'),
  '\begin{flalign*}
    y&=4x^2-mx-8\\
    &=4\left(x^2-\frac{m}{4}x\right)-8\\
    &=4\left(x^2-2(x)\left(\frac{m}{8}\right)+\left(\frac{m}{8}\right)^2-\left(\frac{m}{8}\right)^2\right)-8\\
    &=4\left(x-\frac{m}{8}\right)^2-4\left(\frac{m}{8}\right)^2-8
\end{flalign*}
Therefore, we have
\begin{flalign*}
    \frac{m}{8}&=-1\\
    m&=-8
\end{flalign*}',
  '\begin{flalign*}
    y&=4x^2-mx-8\\
    &=4\left(x^2-\frac{m}{4}x\right)-8\\
    &=4\left(x^2-2(x)\left(\frac{m}{8}\right)+\left(\frac{m}{8}\right)^2-\left(\frac{m}{8}\right)^2\right)-8\\
    &=4\left(x-\frac{m}{8}\right)^2-4\left(\frac{m}{8}\right)^2-8
\end{flalign*}
Therefore, we have
\begin{flalign*}
    \frac{m}{8}&=-1\\
    m&=-8
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 76
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  76,
  'English',
  'Consider the function $y=kx^2+4kx+k^2+1$, where $k$ is a non-zero constant. If the function has a minimum value of $-3$, find the value(s) of $k$.',
  'Consider the function $y=kx^2+4kx+k^2+1$, where $k$ is a non-zero constant. If the function has a minimum value of $-3$, find the value(s) of $k$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 76 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 76 AND language = 'English'),
  '\begin{flalign*}
    y&=kx^2+4kx+k^2+1\\
    &=k\left(x^2+4x\right)+k^2+1\\
    &=k\left(x^2+2(x)(2)+2^2-2^2\right)+k^2+1\\
    &=k(x+2)^2-k\left(2^2\right)+k^2+1\\
    &=k(x+2)^2+k^2-4k+1
\end{flalign*}
Therefore, we have
\begin{flalign*}
    k^2-4k+1&=-3\\
    k^2-4k+4&=0\\
    (k-2)^2&=0\\
    k&=2
\end{flalign*}',
  '\begin{flalign*}
    y&=kx^2+4kx+k^2+1\\
    &=k\left(x^2+4x\right)+k^2+1\\
    &=k\left(x^2+2(x)(2)+2^2-2^2\right)+k^2+1\\
    &=k(x+2)^2-k\left(2^2\right)+k^2+1\\
    &=k(x+2)^2+k^2-4k+1
\end{flalign*}
Therefore, we have
\begin{flalign*}
    k^2-4k+1&=-3\\
    k^2-4k+4&=0\\
    (k-2)^2&=0\\
    k&=2
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 77
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  77,
  'English',
  'Consider the function $y=ax^2+10ax-4a^2+8$, where $a$ is a non-zero constant. If the function has a maximum value of $33$, find the value(s) of $a$.',
  'Consider the function $y=ax^2+10ax-4a^2+8$, where $a$ is a non-zero constant. If the function has a maximum value of $33$, find the value(s) of $a$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 77 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 77 AND language = 'English'),
  '\begin{flalign*}
    y&=ax^2+10ax-4a^2+8\\
    &=a\left(x^2+10x\right)-4a^2+8\\
    &=a\left(x^2+2(x)(5)+5^2-5^2\right)-4a^2+8\\
    &=a(x+5)^2-a\left(5^2\right)-4a^2+8\\
    &=a(x+5)^2-4a^2-25a+8
\end{flalign*}
Therefore, we have
\begin{flalign*}
    -4a^2-25a+8&=33\\
    -4a^2-25a-25&=0\\
    4a^2+25a+25&=0\\
    (4a+5)(a+5)&=0\\
    a&=-\frac{5}{4}\text{ or }-5
\end{flalign*}',
  '\begin{flalign*}
    y&=ax^2+10ax-4a^2+8\\
    &=a\left(x^2+10x\right)-4a^2+8\\
    &=a\left(x^2+2(x)(5)+5^2-5^2\right)-4a^2+8\\
    &=a(x+5)^2-a\left(5^2\right)-4a^2+8\\
    &=a(x+5)^2-4a^2-25a+8
\end{flalign*}
Therefore, we have
\begin{flalign*}
    -4a^2-25a+8&=33\\
    -4a^2-25a-25&=0\\
    4a^2+25a+25&=0\\
    (4a+5)(a+5)&=0\\
    a&=-\frac{5}{4}\text{ or }-5
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 78
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  78,
  'English',
  'Consider the function $y=bx^2+2bx+b^2+7$, where $b$ is a non-zero constant. If the function has a minimum value of $13$, find the value(s) of $b$.',
  'Consider the function $y=bx^2+2bx+b^2+7$, where $b$ is a non-zero constant. If the function has a minimum value of $13$, find the value(s) of $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 78 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 78 AND language = 'English'),
  '\begin{flalign*}
    y&=bx^2+2bx+b^2+7\\
    &=b\left(x^2+2x\right)+b^2+7\\
    &=b\left(x^2+2x+1-1\right)+b^2+7\\
    &=b(x+1)^2-b(1)+b^2+7\\
    &=b(x+1)^2+b^2-b+7
\end{flalign*}
Therefore, we have
\begin{flalign*}
    b^2-b+7&=13\\
    b^2-b-6&=0\\
    (b-3)(b+2)&=0\\
    b&=3\text{ or }-2\text{ (rej.)}
\end{flalign*}',
  '\begin{flalign*}
    y&=bx^2+2bx+b^2+7\\
    &=b\left(x^2+2x\right)+b^2+7\\
    &=b\left(x^2+2x+1-1\right)+b^2+7\\
    &=b(x+1)^2-b(1)+b^2+7\\
    &=b(x+1)^2+b^2-b+7
\end{flalign*}
Therefore, we have
\begin{flalign*}
    b^2-b+7&=13\\
    b^2-b-6&=0\\
    (b-3)(b+2)&=0\\
    b&=3\text{ or }-2\text{ (rej.)}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 79
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  79,
  'English',
  'Consider the function $y=cx^2+5cx-9c^2-6$, where $c$ is a non-zero constant. If the function has a maximum value of $-125$, find the value(s) of $c$.',
  'Consider the function $y=cx^2+5cx-9c^2-6$, where $c$ is a non-zero constant. If the function has a maximum value of $-125$, find the value(s) of $c$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 79 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 79 AND language = 'English'),
  '\begin{flalign*}
    y&=cx^2+5cx-9c^2-6\\
    &=c\left(x^2+5x\right)-9c^2-6\\
    &=c\left(x^2+2(x)\left(\frac{5}{2}\right)+\left(\frac{5}{2}\right)^2-\left(\frac{5}{2}\right)^2\right)-9c^2-6\\
    &=c\left(x+\frac{5}{2}\right)^2-c\left(\frac{5}{2}\right)^2-9c^2-6\\
    &=c\left(x+\frac{5}{2}\right)^2-9c^2-\frac{25}{4}c-6
\end{flalign*}
Therefore, we have
\begin{flalign*}
    -9c^2-\frac{25}{4}c-6&=-125\\
    -9c^2-\frac{25}{4}c+119&=0\\
    36c^2+25c-476&=0\\
    (c+4)(36c-119)&=0\\
    c&=-4\text{ or }\frac{119}{36}\text{ (rej.)}
\end{flalign*}',
  '\begin{flalign*}
    y&=cx^2+5cx-9c^2-6\\
    &=c\left(x^2+5x\right)-9c^2-6\\
    &=c\left(x^2+2(x)\left(\frac{5}{2}\right)+\left(\frac{5}{2}\right)^2-\left(\frac{5}{2}\right)^2\right)-9c^2-6\\
    &=c\left(x+\frac{5}{2}\right)^2-c\left(\frac{5}{2}\right)^2-9c^2-6\\
    &=c\left(x+\frac{5}{2}\right)^2-9c^2-\frac{25}{4}c-6
\end{flalign*}
Therefore, we have
\begin{flalign*}
    -9c^2-\frac{25}{4}c-6&=-125\\
    -9c^2-\frac{25}{4}c+119&=0\\
    36c^2+25c-476&=0\\
    (c+4)(36c-119)&=0\\
    c&=-4\text{ or }\frac{119}{36}\text{ (rej.)}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 80
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  80,
  'English',
  'Consider the function $y=mx^2+7mx+m^2-2$, where $m$ is a non-zero constant. If the function has a minimum value of $-35$, find the value(s) of $m$.',
  'Consider the function $y=mx^2+7mx+m^2-2$, where $m$ is a non-zero constant. If the function has a minimum value of $-35$, find the value(s) of $m$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 80 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 80 AND language = 'English'),
  '\begin{flalign*}
    y&=mx^2+7mx+m^2-2\\
    &=m\left(x^2+7x\right)+m^2-2\\
    &=m\left(x^2+2(x)\left(\frac{7}{2}\right)+\left(\frac{7}{2}\right)^2-\left(\frac{7}{2}\right)^2\right)+m^2-2\\
    &=m\left(x+\frac{7}{2}\right)^2-m\left(\frac{7}{2}\right)^2+m^2-2\\
    &=m\left(x+\frac{7}{2}\right)^2+m^2-\frac{49}{4}m-2
\end{flalign*}
Therefore, we have
\begin{flalign*}
    m^2-\frac{49}{4}m-2&=-35\\
    m^2-\frac{49}{4}m+33&=0\\
    4m^2-49m+132&=0\\
    (m-4)(4m-33)&=0\\
    m&=4\text{ or }\frac{33}{4}
\end{flalign*}',
  '\begin{flalign*}
    y&=mx^2+7mx+m^2-2\\
    &=m\left(x^2+7x\right)+m^2-2\\
    &=m\left(x^2+2(x)\left(\frac{7}{2}\right)+\left(\frac{7}{2}\right)^2-\left(\frac{7}{2}\right)^2\right)+m^2-2\\
    &=m\left(x+\frac{7}{2}\right)^2-m\left(\frac{7}{2}\right)^2+m^2-2\\
    &=m\left(x+\frac{7}{2}\right)^2+m^2-\frac{49}{4}m-2
\end{flalign*}
Therefore, we have
\begin{flalign*}
    m^2-\frac{49}{4}m-2&=-35\\
    m^2-\frac{49}{4}m+33&=0\\
    4m^2-49m+132&=0\\
    (m-4)(4m-33)&=0\\
    m&=4\text{ or }\frac{33}{4}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 81
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  81,
  'English',
  'In the figure, the graph of $y=9-(x+2)^2$ cuts the $x$-axis at $A$ and $B$. If $C$ is a point above the $x$-axis on the curve so that the area of $\triangle ABC$ is a maximum, find the area of $\triangle ABC$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-7,0) -- (3,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,6) node[above] {$y$};
  \draw[domain=-5.25:1.25, smooth, variable=\x, blue] plot ({\x},{9/2 - (\x+2)^2/2}) node[above right] {$y=9-(x+2)^2$};
  \filldraw (-5,0) circle (2pt) node[below right] {$A$};
  \filldraw (1,0) circle (2pt) node[below left] {$B$};
  \filldraw (-2,9/2) circle (2pt) node[above] {$C$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the graph of $y=9-(x+2)^2$ cuts the $x$-axis at $A$ and $B$. If $C$ is a point above the $x$-axis on the curve so that the area of $\triangle ABC$ is a maximum, find the area of $\triangle ABC$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-7,0) -- (3,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,6) node[above] {$y$};
  \draw[domain=-5.25:1.25, smooth, variable=\x, blue] plot ({\x},{9/2 - (\x+2)^2/2}) node[above right] {$y=9-(x+2)^2$};
  \filldraw (-5,0) circle (2pt) node[below right] {$A$};
  \filldraw (1,0) circle (2pt) node[below left] {$B$};
  \filldraw (-2,9/2) circle (2pt) node[above] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 81 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 81 AND language = 'English'),
  '\begin{flalign*}
    y&=9-(x+2)^2\\
    &=-(x+2)^2+9
\end{flalign*}
Therefore, the coordinates of $C$ are $(-2,9)$.\\
Substituting $y=0$ into the equation, we have
\begin{flalign*}
    0&=9-(x+2)^2\\
    3^2-(x+2)^2&=0\\
    \left(3+(x+2)\right)\left(3-(x+2)\right)&=0\\
    (x+5)(-x+1)&=0\\
    x&=-5\text{ or }1
\end{flalign*}
Therefore, the coordinates of $A$ and $B$ are $(-5,0)$ and $(1,0)$ respectively.\\
The area of $\displaystyle \triangle ABC=\frac{1}{2}\left(1-(-5)\right)(9)=27$ units square.',
  '\begin{flalign*}
    y&=9-(x+2)^2\\
    &=-(x+2)^2+9
\end{flalign*}
Therefore, the coordinates of $C$ are $(-2,9)$.\\
Substituting $y=0$ into the equation, we have
\begin{flalign*}
    0&=9-(x+2)^2\\
    3^2-(x+2)^2&=0\\
    \left(3+(x+2)\right)\left(3-(x+2)\right)&=0\\
    (x+5)(-x+1)&=0\\
    x&=-5\text{ or }1
\end{flalign*}
Therefore, the coordinates of $A$ and $B$ are $(-5,0)$ and $(1,0)$ respectively.\\
The area of $\displaystyle \triangle ABC=\frac{1}{2}\left(1-(-5)\right)(9)=27$ units square.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 82
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  82,
  'English',
  'In the figure, the graph of $y=16-(x-3)^2$ cuts the $x$-axis at $A$ and $B$. If $C$ is a point above the $x$-axis on the curve so that the area of $\triangle ABC$ is a maximum, find the area of $\triangle ABC$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-3,0) -- (9,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,7) node[above] {$y$};
  \draw[domain=-1.25:7.25, smooth, variable=\x, blue] plot ({\x},{16/3 - (\x-3)^2/3}) node[above right] {$y=16-(x-3)^2$};
  \filldraw (-1,0) circle (2pt) node[below right] {$A$};
  \filldraw (7,0) circle (2pt) node[below left] {$B$};
  \filldraw (3,16/3) circle (2pt) node[above] {$C$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the graph of $y=16-(x-3)^2$ cuts the $x$-axis at $A$ and $B$. If $C$ is a point above the $x$-axis on the curve so that the area of $\triangle ABC$ is a maximum, find the area of $\triangle ABC$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-3,0) -- (9,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,7) node[above] {$y$};
  \draw[domain=-1.25:7.25, smooth, variable=\x, blue] plot ({\x},{16/3 - (\x-3)^2/3}) node[above right] {$y=16-(x-3)^2$};
  \filldraw (-1,0) circle (2pt) node[below right] {$A$};
  \filldraw (7,0) circle (2pt) node[below left] {$B$};
  \filldraw (3,16/3) circle (2pt) node[above] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 82 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 82 AND language = 'English'),
  '\begin{flalign*}
    y&=16-(x-3)^2\\
    &=-(x-3)^2+16
\end{flalign*}
Therefore, the coordinates of $C$ are $(3,16)$.\\
Substituting $y=0$ into the equation, we have
\begin{flalign*}
    0&=16-(x-3)^2\\
    4^2-(x-3)^2&=0\\
    \left(4+(x-3)\right)\left(4-(x-3)\right)&=0\\
    (x+1)(-x+7)&=0\\
    x&=-1\text{ or }7
\end{flalign*}
Therefore, the coordinates of $A$ and $B$ are $(-1,0)$ and $(7,0)$ respectively.\\
The area of $\displaystyle \triangle ABC=\frac{1}{2}\left(7-(-1)\right)(16)=64$ units square.',
  '\begin{flalign*}
    y&=16-(x-3)^2\\
    &=-(x-3)^2+16
\end{flalign*}
Therefore, the coordinates of $C$ are $(3,16)$.\\
Substituting $y=0$ into the equation, we have
\begin{flalign*}
    0&=16-(x-3)^2\\
    4^2-(x-3)^2&=0\\
    \left(4+(x-3)\right)\left(4-(x-3)\right)&=0\\
    (x+1)(-x+7)&=0\\
    x&=-1\text{ or }7
\end{flalign*}
Therefore, the coordinates of $A$ and $B$ are $(-1,0)$ and $(7,0)$ respectively.\\
The area of $\displaystyle \triangle ABC=\frac{1}{2}\left(7-(-1)\right)(16)=64$ units square.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 83
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  83,
  'English',
  'In the figure, the graph of $y=25-(x+1)^2$ cuts the $x$-axis at $A$ and $B$. If $C$ is a point above the $x$-axis on the curve so that the area of $\triangle ABC$ is a maximum, find the area of $\triangle ABC$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-4,0) -- (3,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,5) node[above] {$y$};
  \draw[domain=-6.5:4.5, smooth, variable=\x, blue] plot ({\x/2},{25/6 - (\x+1)^2/6}) node[above right] {$y=25-(x+1)^2$};
  \filldraw (-3,0) circle (2pt) node[below right] {$A$};
  \filldraw (2,0) circle (2pt) node[below left] {$B$};
  \filldraw (-1/2,25/6) circle (2pt) node[above] {$C$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the graph of $y=25-(x+1)^2$ cuts the $x$-axis at $A$ and $B$. If $C$ is a point above the $x$-axis on the curve so that the area of $\triangle ABC$ is a maximum, find the area of $\triangle ABC$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-4,0) -- (3,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,5) node[above] {$y$};
  \draw[domain=-6.5:4.5, smooth, variable=\x, blue] plot ({\x/2},{25/6 - (\x+1)^2/6}) node[above right] {$y=25-(x+1)^2$};
  \filldraw (-3,0) circle (2pt) node[below right] {$A$};
  \filldraw (2,0) circle (2pt) node[below left] {$B$};
  \filldraw (-1/2,25/6) circle (2pt) node[above] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 83 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 83 AND language = 'English'),
  '\begin{flalign*}
    y&=25-(x+1)^2\\
    &=-(x+1)^2+25
\end{flalign*}
Therefore, the coordinates of $C$ are $(-1,25)$.\\
Substituting $y=0$ into the equation, we have
\begin{flalign*}
    0&=25-(x+1)^2\\
    5^2-(x+1)^2&=0\\
    \left(5+(x+1)\right)\left(5-(x+1)\right)&=0\\
    (x+6)(-x+4)&=0\\
    x&=-6\text{ or }4
\end{flalign*}
Therefore, the coordinates of $A$ and $B$ are $(-6,0)$ and $(4,0)$ respectively.\\
The area of $\displaystyle \triangle ABC=\frac{1}{2}\left(4-(-6)\right)(25)=125$ units square.',
  '\begin{flalign*}
    y&=25-(x+1)^2\\
    &=-(x+1)^2+25
\end{flalign*}
Therefore, the coordinates of $C$ are $(-1,25)$.\\
Substituting $y=0$ into the equation, we have
\begin{flalign*}
    0&=25-(x+1)^2\\
    5^2-(x+1)^2&=0\\
    \left(5+(x+1)\right)\left(5-(x+1)\right)&=0\\
    (x+6)(-x+4)&=0\\
    x&=-6\text{ or }4
\end{flalign*}
Therefore, the coordinates of $A$ and $B$ are $(-6,0)$ and $(4,0)$ respectively.\\
The area of $\displaystyle \triangle ABC=\frac{1}{2}\left(4-(-6)\right)(25)=125$ units square.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 84
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  84,
  'English',
  'In the figure, the graph of $y=36-(x-2)^2$ cuts the $x$-axis at $A$ and $B$. If $C$ is a point above the $x$-axis on the curve so that the area of $\triangle ABC$ is a maximum, find the area of $\triangle ABC$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-3,0) -- (5,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,4) node[above] {$y$};
  \draw[domain=-5:9, smooth, variable=\x, blue] plot ({\x/2},{36/12 - (\x-2)^2/12}) node[above right] {$y=36-(x-2)^2$};
  \filldraw (-2,0) circle (2pt) node[below right] {$A$};
  \filldraw (4,0) circle (2pt) node[below left] {$B$};
  \filldraw (1,3) circle (2pt) node[above] {$C$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the graph of $y=36-(x-2)^2$ cuts the $x$-axis at $A$ and $B$. If $C$ is a point above the $x$-axis on the curve so that the area of $\triangle ABC$ is a maximum, find the area of $\triangle ABC$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-3,0) -- (5,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,4) node[above] {$y$};
  \draw[domain=-5:9, smooth, variable=\x, blue] plot ({\x/2},{36/12 - (\x-2)^2/12}) node[above right] {$y=36-(x-2)^2$};
  \filldraw (-2,0) circle (2pt) node[below right] {$A$};
  \filldraw (4,0) circle (2pt) node[below left] {$B$};
  \filldraw (1,3) circle (2pt) node[above] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 84 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 84 AND language = 'English'),
  '\begin{flalign*}
    y&=36-(x-2)^2\\
    &=-(x-2)^2+36
\end{flalign*}
Therefore, the coordinates of $C$ are $(2,36)$.\\
Substituting $y=0$ into the equation, we have
\begin{flalign*}
    0&=36-(x-2)^2\\
    6^2-(x-2)^2&=0\\
    \left(6+(x-2)\right)\left(6-(x-2)\right)&=0\\
    (x+4)(-x+8)&=0\\
    x&=-4\text{ or }8
\end{flalign*}
Therefore, the coordinates of $A$ and $B$ are $(-4,0)$ and $(8,0)$ respectively.\\
The area of $\displaystyle \triangle ABC=\frac{1}{2}\left(8-(-4)\right)(36)=216$ units square.',
  '\begin{flalign*}
    y&=36-(x-2)^2\\
    &=-(x-2)^2+36
\end{flalign*}
Therefore, the coordinates of $C$ are $(2,36)$.\\
Substituting $y=0$ into the equation, we have
\begin{flalign*}
    0&=36-(x-2)^2\\
    6^2-(x-2)^2&=0\\
    \left(6+(x-2)\right)\left(6-(x-2)\right)&=0\\
    (x+4)(-x+8)&=0\\
    x&=-4\text{ or }8
\end{flalign*}
Therefore, the coordinates of $A$ and $B$ are $(-4,0)$ and $(8,0)$ respectively.\\
The area of $\displaystyle \triangle ABC=\frac{1}{2}\left(8-(-4)\right)(36)=216$ units square.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 85
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  85,
  'English',
  'In the figure, the graph of $y=64-(x-4)^2$ cuts the $x$-axis at $A$ and $B$. If $C$ is a point above the $x$-axis on the curve so that the area of $\triangle ABC$ is a maximum, find the area of $\triangle ABC$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-2,0) -- (14/3,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,70/18) node[above] {$y$};
  \draw[domain=-5:13, smooth, variable=\x, blue] plot ({\x/3},{64/18 - (\x-4)^2/18}) node[above right] {$y=64-(x-4)^2$};
  \filldraw (-4/3,0) circle (2pt) node[below right] {$A$};
  \filldraw (4,0) circle (2pt) node[below left] {$B$};
  \filldraw (4/3,64/18) circle (2pt) node[above] {$C$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the graph of $y=64-(x-4)^2$ cuts the $x$-axis at $A$ and $B$. If $C$ is a point above the $x$-axis on the curve so that the area of $\triangle ABC$ is a maximum, find the area of $\triangle ABC$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-2,0) -- (14/3,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,70/18) node[above] {$y$};
  \draw[domain=-5:13, smooth, variable=\x, blue] plot ({\x/3},{64/18 - (\x-4)^2/18}) node[above right] {$y=64-(x-4)^2$};
  \filldraw (-4/3,0) circle (2pt) node[below right] {$A$};
  \filldraw (4,0) circle (2pt) node[below left] {$B$};
  \filldraw (4/3,64/18) circle (2pt) node[above] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 85 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 85 AND language = 'English'),
  '\begin{flalign*}
    y&=64-(x-4)^2\\
    &=-(x-4)^2+64
\end{flalign*}
Therefore, the coordinates of $C$ are $(4,64)$.\\
Substituting $y=0$ into the equation, we have
\begin{flalign*}
    0&=64-(x-4)^2\\
    8^2-(x-4)^2&=0\\
    \left(8+(x-4)\right)\left(8-(x-4)\right)&=0\\
    (x+4)(-x+12)&=0\\
    x&=-4\text{ or }12
\end{flalign*}
Therefore, the coordinates of $A$ and $B$ are $(-4,0)$ and $(12,0)$ respectively.\\
The area of $\displaystyle \triangle ABC=\frac{1}{2}\left(12-(-4)\right)(64)=512$ units square.',
  '\begin{flalign*}
    y&=64-(x-4)^2\\
    &=-(x-4)^2+64
\end{flalign*}
Therefore, the coordinates of $C$ are $(4,64)$.\\
Substituting $y=0$ into the equation, we have
\begin{flalign*}
    0&=64-(x-4)^2\\
    8^2-(x-4)^2&=0\\
    \left(8+(x-4)\right)\left(8-(x-4)\right)&=0\\
    (x+4)(-x+12)&=0\\
    x&=-4\text{ or }12
\end{flalign*}
Therefore, the coordinates of $A$ and $B$ are $(-4,0)$ and $(12,0)$ respectively.\\
The area of $\displaystyle \triangle ABC=\frac{1}{2}\left(12-(-4)\right)(64)=512$ units square.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 86
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  86,
  'English',
  'The figure shows the graph of $y=x^2+4x+k$. $C(-2,-9)$ is its vertex. The graph cuts the $x$-axis at $A$ and $B$. If $ABDE$ is a rectangle and $DCE$ is a horizontal line, find the area of rectangle $ABDE$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Highlight the rectangle with a translucent fill
  \filldraw[fill=green!10, draw=green] (-5,0) rectangle (1,-9/1.5);
  % Label rectangle vertices
  \node at (-5,-9/1.5) [below left] {$E$};
  \node at (1,-9/1.5) [below right] {$D$};
  % Draw axes
  \draw[->] (-6,0) -- (3,0) node[right] {$x$};
  \draw[->] (0,-10/1.5) -- (0,3/1.5) node[above] {$y$};
  % Plot y=x^2+4x-5
  \draw[domain=-5.25:1.25,smooth,variable=\x,blue,thick] 
       plot ({\x},{\x*\x/1.5+4*\x/1.5-5/1.5}) node[below right] {$y=x^2+4x+k$};
  % Mark intercepts and vertex
  \filldraw [black] (-5,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (1,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (-2,-9/1.5) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}',
  'The figure shows the graph of $y=x^2+4x+k$. $C(-2,-9)$ is its vertex. The graph cuts the $x$-axis at $A$ and $B$. If $ABDE$ is a rectangle and $DCE$ is a horizontal line, find the area of rectangle $ABDE$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Highlight the rectangle with a translucent fill
  \filldraw[fill=green!10, draw=green] (-5,0) rectangle (1,-9/1.5);
  % Label rectangle vertices
  \node at (-5,-9/1.5) [below left] {$E$};
  \node at (1,-9/1.5) [below right] {$D$};
  % Draw axes
  \draw[->] (-6,0) -- (3,0) node[right] {$x$};
  \draw[->] (0,-10/1.5) -- (0,3/1.5) node[above] {$y$};
  % Plot y=x^2+4x-5
  \draw[domain=-5.25:1.25,smooth,variable=\x,blue,thick] 
       plot ({\x},{\x*\x/1.5+4*\x/1.5-5/1.5}) node[below right] {$y=x^2+4x+k$};
  % Mark intercepts and vertex
  \filldraw [black] (-5,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (1,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (-2,-9/1.5) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 86 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 86 AND language = 'English'),
  'Substituting $C(-2,-9)$ into the equation, we have
\begin{flalign*}
    -9&=(-2)^2+4(-2)+k\\
    -9&=4-8+k\\
    k&=-5
\end{flalign*}
Substituting $y=0$ into the equation, we have
\begin{flalign*}
    0&=x^2+4x-5\\
    (x+5)(x-1)&=0\\
    x&=-5\text{ or }1
\end{flalign*}
Therefore, the coordinates of $A$ and $B$ are $(-5,0)$ and $(1,0)$ respectively.\\
The area of the rectangle $\displaystyle ABDE=\left(1-(-5)\right)(9)=54$ units square.',
  'Substituting $C(-2,-9)$ into the equation, we have
\begin{flalign*}
    -9&=(-2)^2+4(-2)+k\\
    -9&=4-8+k\\
    k&=-5
\end{flalign*}
Substituting $y=0$ into the equation, we have
\begin{flalign*}
    0&=x^2+4x-5\\
    (x+5)(x-1)&=0\\
    x&=-5\text{ or }1
\end{flalign*}
Therefore, the coordinates of $A$ and $B$ are $(-5,0)$ and $(1,0)$ respectively.\\
The area of the rectangle $\displaystyle ABDE=\left(1-(-5)\right)(9)=54$ units square.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 87
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  87,
  'English',
  'The figure shows the graph of $y=x^2-4x+k$. $C(2,-9)$ is its vertex. The graph cuts the $x$-axis at $A$ and $B$. If $ABDE$ is a rectangle and $DCE$ is a horizontal line, find the area of rectangle $ABDE$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Highlight the rectangle with a translucent fill
  \filldraw[fill=green!10, draw=green] (-1,0) rectangle (5,-9/1.5);
  % Label rectangle vertices
  \node at (-1,-9/1.5) [below left] {$E$};
  \node at (5,-9/1.5) [below right] {$D$};
  % Draw axes
  \draw[->] (-3,0) -- (7,0) node[right] {$x$};
  \draw[->] (0,-10/1.5) -- (0,2) node[above] {$y$};  \draw[domain=-1.5:5.5,smooth,variable=\x,blue,thick] 
       plot ({\x},{\x*\x/1.5-4*\x/1.5-5/1.5}) node[below left] {$y=x^2-4x+k$};
  % Mark intercepts and vertex
  \filldraw [black] (-1,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (5,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (2,-9/1.5) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}',
  'The figure shows the graph of $y=x^2-4x+k$. $C(2,-9)$ is its vertex. The graph cuts the $x$-axis at $A$ and $B$. If $ABDE$ is a rectangle and $DCE$ is a horizontal line, find the area of rectangle $ABDE$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Highlight the rectangle with a translucent fill
  \filldraw[fill=green!10, draw=green] (-1,0) rectangle (5,-9/1.5);
  % Label rectangle vertices
  \node at (-1,-9/1.5) [below left] {$E$};
  \node at (5,-9/1.5) [below right] {$D$};
  % Draw axes
  \draw[->] (-3,0) -- (7,0) node[right] {$x$};
  \draw[->] (0,-10/1.5) -- (0,2) node[above] {$y$};  \draw[domain=-1.5:5.5,smooth,variable=\x,blue,thick] 
       plot ({\x},{\x*\x/1.5-4*\x/1.5-5/1.5}) node[below left] {$y=x^2-4x+k$};
  % Mark intercepts and vertex
  \filldraw [black] (-1,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (5,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (2,-9/1.5) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 87 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 87 AND language = 'English'),
  'Substituting $C(2,-9)$ into the equation, we have
\begin{flalign*}
    -9&=2^2-4(2)+k\\
    -9&=4-8+k\\
    k&=-5
\end{flalign*}
Substituting $y=0$ into the equation, we have
\begin{flalign*}
    0&=x^2-4x-5\\
    (x+1)(x-5)&=0\\
    x&=-1\text{ or }5
\end{flalign*}
Therefore, the coordinates of $A$ and $B$ are $(-1,0)$ and $(5,0)$ respectively.\\
The area of the rectangle $\displaystyle ABDE=\left(5-(-1)\right)(9)=54$ units square.',
  'Substituting $C(2,-9)$ into the equation, we have
\begin{flalign*}
    -9&=2^2-4(2)+k\\
    -9&=4-8+k\\
    k&=-5
\end{flalign*}
Substituting $y=0$ into the equation, we have
\begin{flalign*}
    0&=x^2-4x-5\\
    (x+1)(x-5)&=0\\
    x&=-1\text{ or }5
\end{flalign*}
Therefore, the coordinates of $A$ and $B$ are $(-1,0)$ and $(5,0)$ respectively.\\
The area of the rectangle $\displaystyle ABDE=\left(5-(-1)\right)(9)=54$ units square.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 88
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  88,
  'English',
  'The figure shows the graph of $y=x^2+8x+k$. $C(-4,-16)$ is its vertex. The graph cuts the $x$-axis at $A$ and $B$. If $ABDE$ is a rectangle and $DCE$ is a horizontal line, find the area of rectangle $ABDE$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Highlight the rectangle with a translucent fill
  \filldraw[fill=green!10, draw=green] (-8/2,0) rectangle (0,-16/4);
  % Label rectangle vertices
  \node at (-8/2,-16/4) [below left] {$E$};
  \node at (0,-16/4) [below right] {$D$};
  % Draw axes
  \draw[->] (-9/2,0) -- (1,0) node[right] {$x$};
  \draw[->] (0,-17/4) -- (0,1) node[above] {$y$};  \draw[domain=-8.5:0.5,smooth,variable=\x,blue,thick] 
       plot ({\x/2},{\x*\x/4+8*\x/4}) node[below right] {$y=x^2+8x+k$};
  % Mark intercepts and vertex
  \filldraw [black] (-8/2,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (0,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (-4/2,-16/4) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}',
  'The figure shows the graph of $y=x^2+8x+k$. $C(-4,-16)$ is its vertex. The graph cuts the $x$-axis at $A$ and $B$. If $ABDE$ is a rectangle and $DCE$ is a horizontal line, find the area of rectangle $ABDE$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Highlight the rectangle with a translucent fill
  \filldraw[fill=green!10, draw=green] (-8/2,0) rectangle (0,-16/4);
  % Label rectangle vertices
  \node at (-8/2,-16/4) [below left] {$E$};
  \node at (0,-16/4) [below right] {$D$};
  % Draw axes
  \draw[->] (-9/2,0) -- (1,0) node[right] {$x$};
  \draw[->] (0,-17/4) -- (0,1) node[above] {$y$};  \draw[domain=-8.5:0.5,smooth,variable=\x,blue,thick] 
       plot ({\x/2},{\x*\x/4+8*\x/4}) node[below right] {$y=x^2+8x+k$};
  % Mark intercepts and vertex
  \filldraw [black] (-8/2,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (0,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (-4/2,-16/4) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 88 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 88 AND language = 'English'),
  'Substituting $C(-4,-16)$ into the equation, we have
\begin{flalign*}
    -16&=(-4)^2+8(-4)+k\\
    -16&=16-32+k\\
    k&=0
\end{flalign*}
Substituting $y=0$ into the equation, we have
\begin{flalign*}
    0&=x^2+8x\\
    x(x+8)&=0\\
    x&=0\text{ or }-8
\end{flalign*}
Therefore, the coordinates of $A$ and $B$ are $(-8,0)$ and $(0,0)$ respectively.\\
The area of the rectangle $\displaystyle ABDE=(8)(16)=128$ units square.',
  'Substituting $C(-4,-16)$ into the equation, we have
\begin{flalign*}
    -16&=(-4)^2+8(-4)+k\\
    -16&=16-32+k\\
    k&=0
\end{flalign*}
Substituting $y=0$ into the equation, we have
\begin{flalign*}
    0&=x^2+8x\\
    x(x+8)&=0\\
    x&=0\text{ or }-8
\end{flalign*}
Therefore, the coordinates of $A$ and $B$ are $(-8,0)$ and $(0,0)$ respectively.\\
The area of the rectangle $\displaystyle ABDE=(8)(16)=128$ units square.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 89
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  89,
  'English',
  'The figure shows the graph of $y=x^2+10x+k$. $C(-5,-36)$ is its vertex. The graph cuts the $x$-axis at $A$ and $B$. If $ABDE$ is a rectangle and $DCE$ is a horizontal line, find the area of rectangle $ABDE$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Highlight the rectangle with a translucent fill
  \filldraw[fill=green!10, draw=green] (-11/2,0) rectangle (1/2,-36/5);
  % Label rectangle vertices
  \node at (-11/2,-36/5) [below left] {$E$};
  \node at (1/2,-36/5) [below right] {$D$};
  % Draw axes
  \draw[->] (-12/2,0) -- (4/2,0) node[right] {$x$};
  \draw[->] (0,-40/5) -- (0,5/5) node[above] {$y$};  \draw[domain=-11.5:1.5,smooth,variable=\x,blue,thick] 
       plot ({\x/2},{\x*\x/5+10*\x/5-11/5}) node[below right] {$y=x^2+10x+k$};
  % Mark intercepts and vertex
  \filldraw [black] (-11/2,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (1/2,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (-5/2,-36/5) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}',
  'The figure shows the graph of $y=x^2+10x+k$. $C(-5,-36)$ is its vertex. The graph cuts the $x$-axis at $A$ and $B$. If $ABDE$ is a rectangle and $DCE$ is a horizontal line, find the area of rectangle $ABDE$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Highlight the rectangle with a translucent fill
  \filldraw[fill=green!10, draw=green] (-11/2,0) rectangle (1/2,-36/5);
  % Label rectangle vertices
  \node at (-11/2,-36/5) [below left] {$E$};
  \node at (1/2,-36/5) [below right] {$D$};
  % Draw axes
  \draw[->] (-12/2,0) -- (4/2,0) node[right] {$x$};
  \draw[->] (0,-40/5) -- (0,5/5) node[above] {$y$};  \draw[domain=-11.5:1.5,smooth,variable=\x,blue,thick] 
       plot ({\x/2},{\x*\x/5+10*\x/5-11/5}) node[below right] {$y=x^2+10x+k$};
  % Mark intercepts and vertex
  \filldraw [black] (-11/2,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (1/2,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (-5/2,-36/5) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 89 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 89 AND language = 'English'),
  'Substituting $C(-5,-36)$ into the equation, we have
\begin{flalign*}
    -36&=(-5)^2+10(-5)+k\\
    -36&=25-50+k\\
    k&=-11
\end{flalign*}
Substituting $y=0$ into the equation, we have
\begin{flalign*}
    0&=x^2+10x-11\\
    (x+11)(x-1)&=0\\
    x&=-11\text{ or }1
\end{flalign*}
Therefore, the coordinates of $A$ and $B$ are $(-11,0)$ and $(1,0)$ respectively.\\
The area of the rectangle $\displaystyle ABDE=\left(1-(-11)\right)(36)=432$ units square.',
  'Substituting $C(-5,-36)$ into the equation, we have
\begin{flalign*}
    -36&=(-5)^2+10(-5)+k\\
    -36&=25-50+k\\
    k&=-11
\end{flalign*}
Substituting $y=0$ into the equation, we have
\begin{flalign*}
    0&=x^2+10x-11\\
    (x+11)(x-1)&=0\\
    x&=-11\text{ or }1
\end{flalign*}
Therefore, the coordinates of $A$ and $B$ are $(-11,0)$ and $(1,0)$ respectively.\\
The area of the rectangle $\displaystyle ABDE=\left(1-(-11)\right)(36)=432$ units square.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 90
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  90,
  'English',
  'The figure shows the graph of $y=x^2+2x+k$. $C(-1,-4)$ is its vertex. The graph cuts the $x$-axis at $A$ and $B$. If $ABDE$ is a rectangle and $DCE$ is a horizontal line, find the area of rectangle $ABDE$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Highlight the rectangle with a translucent fill
  \filldraw[fill=green!10, draw=green] (-3,0) rectangle (1,-4);
  % Label rectangle vertices
  \node at (-3,-4) [below left] {$E$};
  \node at (1,-4) [below right] {$D$};
  % Draw axes
  \draw[->] (-4,0) -- (2,0) node[right] {$x$};
  \draw[->] (0,-4.5) -- (0,1.25) node[above] {$y$};  \draw[domain=-3.25:1.25,smooth,variable=\x,blue,thick] 
       plot ({\x},{\x*\x+2*\x-3}) node[below right] {$y=x^2+2x+k$};
  % Mark intercepts and vertex
  \filldraw [black] (-3,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (1,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (-1,-4) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}',
  'The figure shows the graph of $y=x^2+2x+k$. $C(-1,-4)$ is its vertex. The graph cuts the $x$-axis at $A$ and $B$. If $ABDE$ is a rectangle and $DCE$ is a horizontal line, find the area of rectangle $ABDE$.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Highlight the rectangle with a translucent fill
  \filldraw[fill=green!10, draw=green] (-3,0) rectangle (1,-4);
  % Label rectangle vertices
  \node at (-3,-4) [below left] {$E$};
  \node at (1,-4) [below right] {$D$};
  % Draw axes
  \draw[->] (-4,0) -- (2,0) node[right] {$x$};
  \draw[->] (0,-4.5) -- (0,1.25) node[above] {$y$};  \draw[domain=-3.25:1.25,smooth,variable=\x,blue,thick] 
       plot ({\x},{\x*\x+2*\x-3}) node[below right] {$y=x^2+2x+k$};
  % Mark intercepts and vertex
  \filldraw [black] (-3,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (1,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (-1,-4) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 90 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 90 AND language = 'English'),
  'Substituting $C(-1,-4)$ into the equation, we have
\begin{flalign*}
    -4&=(-1)^2+2(-1)+k\\
    -4&=1-2+k\\
    k&=-3
\end{flalign*}
Substituting $y=0$ into the equation, we have
\begin{flalign*}
    0&=x^2+2x-3\\
    (x+3)(x-1)&=0\\
    x&=-3\text{ or }1
\end{flalign*}
Therefore, the coordinates of $A$ and $B$ are $(-3,0)$ and $(1,0)$ respectively.\\
The area of the rectangle $\displaystyle ABDE=\left(1-(-3)\right)(4)=16$ units square.',
  'Substituting $C(-1,-4)$ into the equation, we have
\begin{flalign*}
    -4&=(-1)^2+2(-1)+k\\
    -4&=1-2+k\\
    k&=-3
\end{flalign*}
Substituting $y=0$ into the equation, we have
\begin{flalign*}
    0&=x^2+2x-3\\
    (x+3)(x-1)&=0\\
    x&=-3\text{ or }1
\end{flalign*}
Therefore, the coordinates of $A$ and $B$ are $(-3,0)$ and $(1,0)$ respectively.\\
The area of the rectangle $\displaystyle ABDE=\left(1-(-3)\right)(4)=16$ units square.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 91
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  91,
  'English',
  'In the figure, the graph of $y=(x-2)^2+k$ cuts the $x$-axis at $A$ and $B$, and cuts the $y$-axis at $C(0,3)$. If $P$ is a point below the $x$-axis on the curve, is it possible that the area of $\triangle ABP$ is greater than the area of $\triangle ABC$? Explain your answer.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-1,0) -- (5,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,5) node[above] {$y$};

  \draw[domain=-0.5:4.5, smooth, variable=\x, blue, thick] 
        plot ({\x}, {(\x-2)^2-1}) node[below right] {$y=(x-2)^2+k$};

  \filldraw [black] (1,0) circle (2pt) node[below right] {$A$};
  \filldraw [black] (3,0) circle (2pt) node[below left] {$B$};
  \filldraw [black] (0,3) circle (2pt) node[right] {$C(0,3)$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the graph of $y=(x-2)^2+k$ cuts the $x$-axis at $A$ and $B$, and cuts the $y$-axis at $C(0,3)$. If $P$ is a point below the $x$-axis on the curve, is it possible that the area of $\triangle ABP$ is greater than the area of $\triangle ABC$? Explain your answer.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-1,0) -- (5,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,5) node[above] {$y$};

  \draw[domain=-0.5:4.5, smooth, variable=\x, blue, thick] 
        plot ({\x}, {(\x-2)^2-1}) node[below right] {$y=(x-2)^2+k$};

  \filldraw [black] (1,0) circle (2pt) node[below right] {$A$};
  \filldraw [black] (3,0) circle (2pt) node[below left] {$B$};
  \filldraw [black] (0,3) circle (2pt) node[right] {$C(0,3)$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 91 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 91 AND language = 'English'),
  'Substituting $C(0,3)$ into the equation, we have
\begin{flalign*}
    3&=(0-2)^2+k\\
    3&=4+k\\
    k&=-1
\end{flalign*}
Therefore, the coordinates of the vertex are $(2,-1)$.\\
The area of $\triangle ABP$ is maximized when $P$ is the vertex.\\
As $\triangle ABP$ and $\triangle ABC$ have the same base $AB$, the vertical distance from $C$ to $AB$ is larger than the maximum of the vertical distance from the $P$ to $AB$, the area of $\triangle ABC$ is larger than the area of $\triangle ABP$.\\
Therefore, it is not possible that the area of $\triangle ABP$ is greater than the
area of $\triangle ABC$.',
  'Substituting $C(0,3)$ into the equation, we have
\begin{flalign*}
    3&=(0-2)^2+k\\
    3&=4+k\\
    k&=-1
\end{flalign*}
Therefore, the coordinates of the vertex are $(2,-1)$.\\
The area of $\triangle ABP$ is maximized when $P$ is the vertex.\\
As $\triangle ABP$ and $\triangle ABC$ have the same base $AB$, the vertical distance from $C$ to $AB$ is larger than the maximum of the vertical distance from the $P$ to $AB$, the area of $\triangle ABC$ is larger than the area of $\triangle ABP$.\\
Therefore, it is not possible that the area of $\triangle ABP$ is greater than the
area of $\triangle ABC$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 92
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  92,
  'English',
  'In the figure, the graph of $y=(x-4)^2+k$ cuts the $x$-axis at $A$ and $B$, and cuts the $y$-axis at $C(0,7)$. If $P$ is a point below the $x$-axis on the curve, is it possible that the area of $\triangle ABP$ is greater than the area of $\triangle ABC$? Explain your answer.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-1/2,0) -- (9/2,0) node[right] {$x$};
  \draw[->] (0,-12/4+0.25) -- (0,9/4) node[above] {$y$};

  \draw[domain=-0.25:8.25, smooth, variable=\x, blue, thick] 
        plot ({\x/2}, {(\x-4)^2/4-9/4}) node[below right] {$y=(x-4)^2+k$};

  \filldraw [black] (1/2,0) circle (2pt) node[below right] {$A$};
  \filldraw [black] (7/2,0) circle (2pt) node[below left] {$B$};
  \filldraw [black] (0,7/4) circle (2pt) node[right] {$C(0,7)$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the graph of $y=(x-4)^2+k$ cuts the $x$-axis at $A$ and $B$, and cuts the $y$-axis at $C(0,7)$. If $P$ is a point below the $x$-axis on the curve, is it possible that the area of $\triangle ABP$ is greater than the area of $\triangle ABC$? Explain your answer.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-1/2,0) -- (9/2,0) node[right] {$x$};
  \draw[->] (0,-12/4+0.25) -- (0,9/4) node[above] {$y$};

  \draw[domain=-0.25:8.25, smooth, variable=\x, blue, thick] 
        plot ({\x/2}, {(\x-4)^2/4-9/4}) node[below right] {$y=(x-4)^2+k$};

  \filldraw [black] (1/2,0) circle (2pt) node[below right] {$A$};
  \filldraw [black] (7/2,0) circle (2pt) node[below left] {$B$};
  \filldraw [black] (0,7/4) circle (2pt) node[right] {$C(0,7)$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 92 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 92 AND language = 'English'),
  'Substituting $C(0,7)$ into the equation, we have
\begin{flalign*}
    7&=(0-4)^2+k\\
    7&=16+k\\
    k&=-9
\end{flalign*}
Therefore, the coordinates of the vertex are $(4,-9)$.\\
The area of $\triangle ABP$ is maximized when $P$ is the vertex.\\
As $\triangle ABP$ and $\triangle ABC$ have the same base $AB$, the vertical distance from $P$ to $AB$ is larger than the maximum of the vertical distance from the $C$ to $AB$, the area of $\triangle ABP$ is larger than the area of $\triangle ABC$.\\
Therefore, it is possible that the area of $\triangle ABP$ is greater than the
area of $\triangle ABC$.',
  'Substituting $C(0,7)$ into the equation, we have
\begin{flalign*}
    7&=(0-4)^2+k\\
    7&=16+k\\
    k&=-9
\end{flalign*}
Therefore, the coordinates of the vertex are $(4,-9)$.\\
The area of $\triangle ABP$ is maximized when $P$ is the vertex.\\
As $\triangle ABP$ and $\triangle ABC$ have the same base $AB$, the vertical distance from $P$ to $AB$ is larger than the maximum of the vertical distance from the $C$ to $AB$, the area of $\triangle ABP$ is larger than the area of $\triangle ABC$.\\
Therefore, it is possible that the area of $\triangle ABP$ is greater than the
area of $\triangle ABC$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 93
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  93,
  'English',
  'In the figure, the graph of $y=(x-3)^2+k$ cuts the $x$-axis at $A$ and $B$, and cuts the $y$-axis at $C(0,8)$. If $P$ is a point below the $x$-axis on the curve, is it possible that the area of $\triangle ABP$ is greater than the area of $\triangle ABC$? Explain your answer.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-1/2*1.5,0) -- (7/2*1.5,0) node[right] {$x$};
  \draw[->] (0,-3/4*1.5) -- (0,10/4*1.5) node[above] {$y$};

  \draw[domain=-0.25:6.25, smooth, variable=\x, blue, thick] 
        plot ({\x/2*1.5}, {(\x-3)^2/4*1.5-1/4*1.5}) node[below right] {$y=(x-3)^2+k$};

  \filldraw [black] (2/2*1.5,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (4/2*1.5,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (0,8/4*1.5) circle (2pt) node[right] {$C(0,8)$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the graph of $y=(x-3)^2+k$ cuts the $x$-axis at $A$ and $B$, and cuts the $y$-axis at $C(0,8)$. If $P$ is a point below the $x$-axis on the curve, is it possible that the area of $\triangle ABP$ is greater than the area of $\triangle ABC$? Explain your answer.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-1/2*1.5,0) -- (7/2*1.5,0) node[right] {$x$};
  \draw[->] (0,-3/4*1.5) -- (0,10/4*1.5) node[above] {$y$};

  \draw[domain=-0.25:6.25, smooth, variable=\x, blue, thick] 
        plot ({\x/2*1.5}, {(\x-3)^2/4*1.5-1/4*1.5}) node[below right] {$y=(x-3)^2+k$};

  \filldraw [black] (2/2*1.5,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (4/2*1.5,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (0,8/4*1.5) circle (2pt) node[right] {$C(0,8)$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 93 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 93 AND language = 'English'),
  'Substituting $C(0,8)$ into the equation, we have
\begin{flalign*}
    8&=(0-3)^2+k\\
    8&=9+k\\
    k&=-1
\end{flalign*}
Therefore, the coordinates of the vertex are $(3,-1)$.\\
The area of $\triangle ABP$ is maximized when $P$ is the vertex.\\
As $\triangle ABP$ and $\triangle ABC$ have the same base $AB$, the vertical distance from $C$ to $AB$ is larger than the maximum of the vertical distance from the $P$ to $AB$, the area of $\triangle ABC$ is larger than the area of $\triangle ABP$.\\
Therefore, it is not possible that the area of $\triangle ABP$ is greater than the
area of $\triangle ABC$.',
  'Substituting $C(0,8)$ into the equation, we have
\begin{flalign*}
    8&=(0-3)^2+k\\
    8&=9+k\\
    k&=-1
\end{flalign*}
Therefore, the coordinates of the vertex are $(3,-1)$.\\
The area of $\triangle ABP$ is maximized when $P$ is the vertex.\\
As $\triangle ABP$ and $\triangle ABC$ have the same base $AB$, the vertical distance from $C$ to $AB$ is larger than the maximum of the vertical distance from the $P$ to $AB$, the area of $\triangle ABC$ is larger than the area of $\triangle ABP$.\\
Therefore, it is not possible that the area of $\triangle ABP$ is greater than the
area of $\triangle ABC$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 94
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  94,
  'English',
  'In the figure, the graph of $y=(x-6)^2+k$ cuts the $x$-axis at $A$ and $B$, and cuts the $y$-axis at $C(0,35)$. If $P$ is a point below the $x$-axis on the curve, is it possible that the area of $\triangle ABP$ is greater than the area of $\triangle ABC$? Explain your answer.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-1/2,0) -- (9/2+2,0) node[right] {$x$};
  \draw[->] (0,-3/8-1.5) -- (0,40/8-1.5) node[above] {$y$};

  \draw[domain=-0.25:12.25, smooth, variable=\x, blue, thick] 
        plot ({\x/2}, {(\x-6)^2/8-1/8-1.5}) node[below right] {$y=(x-6)^2+k$};

  \filldraw [black] (2.39445/2,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (9.60555/2,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (0,36/8-1.5) circle (2pt) node[right] {$C(0,35)$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the graph of $y=(x-6)^2+k$ cuts the $x$-axis at $A$ and $B$, and cuts the $y$-axis at $C(0,35)$. If $P$ is a point below the $x$-axis on the curve, is it possible that the area of $\triangle ABP$ is greater than the area of $\triangle ABC$? Explain your answer.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-1/2,0) -- (9/2+2,0) node[right] {$x$};
  \draw[->] (0,-3/8-1.5) -- (0,40/8-1.5) node[above] {$y$};

  \draw[domain=-0.25:12.25, smooth, variable=\x, blue, thick] 
        plot ({\x/2}, {(\x-6)^2/8-1/8-1.5}) node[below right] {$y=(x-6)^2+k$};

  \filldraw [black] (2.39445/2,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (9.60555/2,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (0,36/8-1.5) circle (2pt) node[right] {$C(0,35)$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 94 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 94 AND language = 'English'),
  'Substituting $C(0,35)$ into the equation, we have
\begin{flalign*}
    35&=(0-6)^2+k\\
    35&=36+k\\
    k&=-1
\end{flalign*}
Therefore, the coordinates of the vertex are $(6,-1)$.\\
The area of $\triangle ABP$ is maximized when $P$ is the vertex.\\
As $\triangle ABP$ and $\triangle ABC$ have the same base $AB$, the vertical distance from $C$ to $AB$ is larger than the maximum of the vertical distance from the $P$ to $AB$, the area of $\triangle ABC$ is larger than the area of $\triangle ABP$.\\
Therefore, it is not possible that the area of $\triangle ABP$ is greater than the
area of $\triangle ABC$.',
  'Substituting $C(0,35)$ into the equation, we have
\begin{flalign*}
    35&=(0-6)^2+k\\
    35&=36+k\\
    k&=-1
\end{flalign*}
Therefore, the coordinates of the vertex are $(6,-1)$.\\
The area of $\triangle ABP$ is maximized when $P$ is the vertex.\\
As $\triangle ABP$ and $\triangle ABC$ have the same base $AB$, the vertical distance from $C$ to $AB$ is larger than the maximum of the vertical distance from the $P$ to $AB$, the area of $\triangle ABC$ is larger than the area of $\triangle ABP$.\\
Therefore, it is not possible that the area of $\triangle ABP$ is greater than the
area of $\triangle ABC$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 95
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  95,
  'English',
  'In the figure, the graph of $y=(x-5)^2+k$ cuts the $x$-axis at $A$ and $B$, and cuts the $y$-axis at $C(0,9)$. If $P$ is a point below the $x$-axis on the curve, is it possible that the area of $\triangle ABP$ is greater than the area of $\triangle ABC$? Explain your answer.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-1/2,0) -- (11/2,0) node[right] {$x$};
  \draw[->] (0,-18/6) -- (0,12/6) node[above] {$y$};

  \draw[domain=-0.25:10.25, smooth, variable=\x, blue, thick] 
        plot ({\x/2}, {(\x-5)^2/6-16/6}) node[below right] {$y=(x-5)^2+k$};

  \filldraw [black] (1/2,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (9/2,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (0,9/6) circle (2pt) node[right] {$C(0,9)$};
\end{tikzpicture}}
\end{center}',
  'In the figure, the graph of $y=(x-5)^2+k$ cuts the $x$-axis at $A$ and $B$, and cuts the $y$-axis at $C(0,9)$. If $P$ is a point below the $x$-axis on the curve, is it possible that the area of $\triangle ABP$ is greater than the area of $\triangle ABC$? Explain your answer.
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-1/2,0) -- (11/2,0) node[right] {$x$};
  \draw[->] (0,-18/6) -- (0,12/6) node[above] {$y$};

  \draw[domain=-0.25:10.25, smooth, variable=\x, blue, thick] 
        plot ({\x/2}, {(\x-5)^2/6-16/6}) node[below right] {$y=(x-5)^2+k$};

  \filldraw [black] (1/2,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (9/2,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (0,9/6) circle (2pt) node[right] {$C(0,9)$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 95 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 95 AND language = 'English'),
  'Substituting $C(0,9)$ into the equation, we have
\begin{flalign*}
    9&=(0-5)^2+k\\
    9&=25+k\\
    k&=-16
\end{flalign*}
Therefore, the coordinates of the vertex are $(5,-16)$.\\
The area of $\triangle ABP$ is maximized when $P$ is the vertex.\\
As $\triangle ABP$ and $\triangle ABC$ have the same base $AB$, the vertical distance from $P$ to $AB$ is larger than the maximum of the vertical distance from the $C$ to $AB$, the area of $\triangle ABP$ is larger than the area of $\triangle ABC$.\\
Therefore, it is possible that the area of $\triangle ABP$ is greater than the
area of $\triangle ABC$.',
  'Substituting $C(0,9)$ into the equation, we have
\begin{flalign*}
    9&=(0-5)^2+k\\
    9&=25+k\\
    k&=-16
\end{flalign*}
Therefore, the coordinates of the vertex are $(5,-16)$.\\
The area of $\triangle ABP$ is maximized when $P$ is the vertex.\\
As $\triangle ABP$ and $\triangle ABC$ have the same base $AB$, the vertical distance from $P$ to $AB$ is larger than the maximum of the vertical distance from the $C$ to $AB$, the area of $\triangle ABP$ is larger than the area of $\triangle ABC$.\\
Therefore, it is possible that the area of $\triangle ABP$ is greater than the
area of $\triangle ABC$.'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 96
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  96,
  'English',
  'A goalkeeper kicks a soccer ball. The height ($h$ m) of the ball after $t$ seconds is given by $h=33t-5t^2+2$. Find the value(s) of $t$ when the ball reaches half of its maximum height. (Give your answers correct to 3 significant figures.)',
  'A goalkeeper kicks a soccer ball. The height ($h$ m) of the ball after $t$ seconds is given by $h=33t-5t^2+2$. Find the value(s) of $t$ when the ball reaches half of its maximum height. (Give your answers correct to 3 significant figures.)'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 96 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 96 AND language = 'English'),
  '\begin{flalign*}
    h&=33t-5t^2+2\\
    &=-5t^2+33t+2\\
    &=-5\left(t^2-\frac{33}{5}t\right)+2\\
    &=-5\left(t^2-2(t)\left(\frac{33}{10}\right)+\left(\frac{33}{10}\right)^2-\left(\frac{33}{10}\right)^2\right)+2\\
    &=-5\left(t-\frac{33}{10}\right)^2+5\left(\frac{33}{10}\right)^2+2\\
    &=-5\left(t-\frac{33}{10}\right)^2+\frac{1089}{20}+2\\
    &=-5\left(t-\frac{33}{10}\right)^2+\frac{1129}{20}
\end{flalign*}
Therefore, the ball will reach the maximum height $\displaystyle \frac{1129}{20}$.\\
Substituting $\displaystyle h=\frac{1129}{40}$ into the equation, we have
\begin{flalign*}
    \frac{1129}{40}&=33t-5t^2+2\\
    -5t^2+33t-\frac{1049}{40}&=0\\
    -80t^2+1320t-1049&=0\\
    t&=\frac{-1320\pm \sqrt{1320^2-4(-80)(-1049)}}{2(-80)}\\
    t&=0.924\text{ or }5.68\text{ (corr. to 3 sig. fig.)}
\end{flalign*}',
  '\begin{flalign*}
    h&=33t-5t^2+2\\
    &=-5t^2+33t+2\\
    &=-5\left(t^2-\frac{33}{5}t\right)+2\\
    &=-5\left(t^2-2(t)\left(\frac{33}{10}\right)+\left(\frac{33}{10}\right)^2-\left(\frac{33}{10}\right)^2\right)+2\\
    &=-5\left(t-\frac{33}{10}\right)^2+5\left(\frac{33}{10}\right)^2+2\\
    &=-5\left(t-\frac{33}{10}\right)^2+\frac{1089}{20}+2\\
    &=-5\left(t-\frac{33}{10}\right)^2+\frac{1129}{20}
\end{flalign*}
Therefore, the ball will reach the maximum height $\displaystyle \frac{1129}{20}$.\\
Substituting $\displaystyle h=\frac{1129}{40}$ into the equation, we have
\begin{flalign*}
    \frac{1129}{40}&=33t-5t^2+2\\
    -5t^2+33t-\frac{1049}{40}&=0\\
    -80t^2+1320t-1049&=0\\
    t&=\frac{-1320\pm \sqrt{1320^2-4(-80)(-1049)}}{2(-80)}\\
    t&=0.924\text{ or }5.68\text{ (corr. to 3 sig. fig.)}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 97
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  97,
  'English',
  'A basketball player shoots the ball toward the hoop. The height ($h$ m) of the ball after $t$ seconds is given by $h=26t-5t^2-2$. Find the value(s) of $t$ when the basketball reaches half of its maximum height. (Give your answers correct to 3 significant figures.)',
  'A basketball player shoots the ball toward the hoop. The height ($h$ m) of the ball after $t$ seconds is given by $h=26t-5t^2-2$. Find the value(s) of $t$ when the basketball reaches half of its maximum height. (Give your answers correct to 3 significant figures.)'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 97 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 97 AND language = 'English'),
  '\begin{flalign*}
    h&=26t-5t^2-2\\
    &=-5t^2+26t-2\\
    &=-5\left(t^2-\frac{26}{5}t\right)-2\\
    &=-5\left(t^2-2(t)\left(\frac{13}{5}\right)+\left(\frac{13}{5}\right)^2-\left(\frac{13}{5}\right)^2\right)-2\\
    &=-5\left(t-\frac{13}{5}\right)^2+5\left(\frac{13}{5}\right)^2-2\\
    &=-5\left(t-\frac{13}{5}\right)^2+\frac{169}{5}-2\\
    &=-5\left(t-\frac{13}{5}\right)^2+\frac{159}{5}
\end{flalign*}
Therefore, the ball will reach the maximum height $\displaystyle \frac{159}{5}$.\\
Substituting $\displaystyle h=\frac{159}{10}$ into the equation, we have
\begin{flalign*}
    \frac{159}{10}&=26t-5t^2-2\\
    -5t^2+26t-\frac{179}{10}&=0\\
    -50t^2+260t-179&=0\\
    t&=\frac{-260\pm \sqrt{260^2-4(-50)(-179)}}{2(-50)}\\
    t&=0.817\text{ or }4.38\text{ (corr. to 3 sig. fig.)}
\end{flalign*}',
  '\begin{flalign*}
    h&=26t-5t^2-2\\
    &=-5t^2+26t-2\\
    &=-5\left(t^2-\frac{26}{5}t\right)-2\\
    &=-5\left(t^2-2(t)\left(\frac{13}{5}\right)+\left(\frac{13}{5}\right)^2-\left(\frac{13}{5}\right)^2\right)-2\\
    &=-5\left(t-\frac{13}{5}\right)^2+5\left(\frac{13}{5}\right)^2-2\\
    &=-5\left(t-\frac{13}{5}\right)^2+\frac{169}{5}-2\\
    &=-5\left(t-\frac{13}{5}\right)^2+\frac{159}{5}
\end{flalign*}
Therefore, the ball will reach the maximum height $\displaystyle \frac{159}{5}$.\\
Substituting $\displaystyle h=\frac{159}{10}$ into the equation, we have
\begin{flalign*}
    \frac{159}{10}&=26t-5t^2-2\\
    -5t^2+26t-\frac{179}{10}&=0\\
    -50t^2+260t-179&=0\\
    t&=\frac{-260\pm \sqrt{260^2-4(-50)(-179)}}{2(-50)}\\
    t&=0.817\text{ or }4.38\text{ (corr. to 3 sig. fig.)}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 98
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  98,
  'English',
  'A fireworks rocket is launched such that its height ($h$ m) after $t$ seconds is given by $h=14t-5t^2+1$. Find the value(s) of $t$ when the rocket reaches half of its maximum height. (Give your answers correct to 3 significant figures.)',
  'A fireworks rocket is launched such that its height ($h$ m) after $t$ seconds is given by $h=14t-5t^2+1$. Find the value(s) of $t$ when the rocket reaches half of its maximum height. (Give your answers correct to 3 significant figures.)'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 98 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 98 AND language = 'English'),
  '\begin{flalign*}
    h&=14t-5t^2+1\\
    &=-5t^2+14t+1\\
    &=-5\left(t^2-\frac{14}{5}t\right)+1\\
    &=-5\left(t^2-2(t)\left(\frac{7}{5}\right)+\left(\frac{7}{5}\right)^2-\left(\frac{7}{5}\right)^2\right)+1\\
    &=-5\left(t-\frac{7}{5}\right)^2+5\left(\frac{7}{5}\right)^2+1\\
    &=-5\left(t-\frac{7}{5}\right)^2+\frac{49}{5}+1\\
    &=-5\left(t-\frac{7}{5}\right)^2+\frac{54}{5}
\end{flalign*}
Therefore, the rocket will reach the maximum height $\displaystyle \frac{54}{5}$.\\
Substituting $\displaystyle h=\frac{27}{5}$ into the equation, we have
\begin{flalign*}
    \frac{27}{5}&=14t-5t^2+1\\
    -5t^2+14t-\frac{22}{5}&=0\\
    -25t^2+70t-22&=0\\
    t&=\frac{-70\pm \sqrt{70^2-4(-25)(-22)}}{2(-25)}\\
    t&=0.361\text{ or }2.44\text{ (corr. to 3 sig. fig.)}
\end{flalign*}',
  '\begin{flalign*}
    h&=14t-5t^2+1\\
    &=-5t^2+14t+1\\
    &=-5\left(t^2-\frac{14}{5}t\right)+1\\
    &=-5\left(t^2-2(t)\left(\frac{7}{5}\right)+\left(\frac{7}{5}\right)^2-\left(\frac{7}{5}\right)^2\right)+1\\
    &=-5\left(t-\frac{7}{5}\right)^2+5\left(\frac{7}{5}\right)^2+1\\
    &=-5\left(t-\frac{7}{5}\right)^2+\frac{49}{5}+1\\
    &=-5\left(t-\frac{7}{5}\right)^2+\frac{54}{5}
\end{flalign*}
Therefore, the rocket will reach the maximum height $\displaystyle \frac{54}{5}$.\\
Substituting $\displaystyle h=\frac{27}{5}$ into the equation, we have
\begin{flalign*}
    \frac{27}{5}&=14t-5t^2+1\\
    -5t^2+14t-\frac{22}{5}&=0\\
    -25t^2+70t-22&=0\\
    t&=\frac{-70\pm \sqrt{70^2-4(-25)(-22)}}{2(-25)}\\
    t&=0.361\text{ or }2.44\text{ (corr. to 3 sig. fig.)}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 99
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  99,
  'English',
  'A golfer hits a golf ball such that its height ($h$ m) after $t$ seconds is given by $h=16t-5t^2-1$. Find the value(s) of $t$ when the ball reaches half of its maximum height. (Give your answers correct to 3 significant figures.)',
  'A golfer hits a golf ball such that its height ($h$ m) after $t$ seconds is given by $h=16t-5t^2-1$. Find the value(s) of $t$ when the ball reaches half of its maximum height. (Give your answers correct to 3 significant figures.)'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 99 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 99 AND language = 'English'),
  '\begin{flalign*}
    h&=16t-5t^2-1\\
    &=-5t^2+16t-1\\
    &=-5\left(t^2-\frac{16}{5}t\right)-1\\
    &=-5\left(t^2-2(t)\left(\frac{8}{5}\right)+\left(\frac{8}{5}\right)^2-\left(\frac{8}{5}\right)^2\right)-1\\
    &=-5\left(t-\frac{8}{5}\right)^2+5\left(\frac{8}{5}\right)^2-1\\
    &=-5\left(t-\frac{8}{5}\right)^2+\frac{64}{5}-1\\
    &=-5\left(t-\frac{8}{5}\right)^2+\frac{59}{5}
\end{flalign*}
Therefore, the ball will reach the maximum height $\displaystyle \frac{59}{5}$.\\
Substituting $\displaystyle h=\frac{59}{10}$ into the equation, we have
\begin{flalign*}
    \frac{59}{10}&=16t-5t^2-1\\
    -5t^2+16t-\frac{69}{10}&=0\\
    -50t^2+160t-69&=0\\
    t&=\frac{-160 \pm \sqrt{160^2-4(-50)(-69)}}{2(-50)}\\
    t&=0.514\text{ or }2.69\text{ (corr. to 3 sig. fig.)}
\end{flalign*}',
  '\begin{flalign*}
    h&=16t-5t^2-1\\
    &=-5t^2+16t-1\\
    &=-5\left(t^2-\frac{16}{5}t\right)-1\\
    &=-5\left(t^2-2(t)\left(\frac{8}{5}\right)+\left(\frac{8}{5}\right)^2-\left(\frac{8}{5}\right)^2\right)-1\\
    &=-5\left(t-\frac{8}{5}\right)^2+5\left(\frac{8}{5}\right)^2-1\\
    &=-5\left(t-\frac{8}{5}\right)^2+\frac{64}{5}-1\\
    &=-5\left(t-\frac{8}{5}\right)^2+\frac{59}{5}
\end{flalign*}
Therefore, the ball will reach the maximum height $\displaystyle \frac{59}{5}$.\\
Substituting $\displaystyle h=\frac{59}{10}$ into the equation, we have
\begin{flalign*}
    \frac{59}{10}&=16t-5t^2-1\\
    -5t^2+16t-\frac{69}{10}&=0\\
    -50t^2+160t-69&=0\\
    t&=\frac{-160 \pm \sqrt{160^2-4(-50)(-69)}}{2(-50)}\\
    t&=0.514\text{ or }2.69\text{ (corr. to 3 sig. fig.)}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 100
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  100,
  'English',
  'An archer shoots an arrow such that its height ($h$ m) after $t$ seconds is given by $h=32t-5t^2$. Find the value(s) of $t$ when the arrow reaches half of its maximum height. (Give your answers correct to 3 significant figures.)',
  'An archer shoots an arrow such that its height ($h$ m) after $t$ seconds is given by $h=32t-5t^2$. Find the value(s) of $t$ when the arrow reaches half of its maximum height. (Give your answers correct to 3 significant figures.)'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 100 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 100 AND language = 'English'),
  '\begin{flalign*}
    h&=32t-5t^2\\
    &=-5t^2+32t\\
    &=-5\left(t^2-\frac{32}{5}t\right)\\
    &=-5\left(t^2-2(t)\left(\frac{16}{5}\right)+\left(\frac{16}{5}\right)^2-\left(\frac{16}{5}\right)^2\right)\\
    &=-5\left(t-\frac{16}{5}\right)^2+5\left(\frac{16}{5}\right)^2\\
    &=-5\left(t-\frac{16}{5}\right)^2+\frac{256}{5}
\end{flalign*}
Therefore, the arrow will reach the maximum height $\displaystyle \frac{256}{5}$.\\
Substituting $\displaystyle h=\frac{128}{5}$ into the equation, we have
\begin{flalign*}
    \frac{128}{5}&=32t-5t^2\\
    -5t^2+32t-\frac{128}{5}&=0\\
    -25t^2+160t-128&=0\\
    t&=\frac{-160\pm \sqrt{160^2-4(-25)(-128)}}{2(-25)}\\
    t&=0.937\text{ or }5.46\text{ (corr. to 3 sig. fig.)}
\end{flalign*}',
  '\begin{flalign*}
    h&=32t-5t^2\\
    &=-5t^2+32t\\
    &=-5\left(t^2-\frac{32}{5}t\right)\\
    &=-5\left(t^2-2(t)\left(\frac{16}{5}\right)+\left(\frac{16}{5}\right)^2-\left(\frac{16}{5}\right)^2\right)\\
    &=-5\left(t-\frac{16}{5}\right)^2+5\left(\frac{16}{5}\right)^2\\
    &=-5\left(t-\frac{16}{5}\right)^2+\frac{256}{5}
\end{flalign*}
Therefore, the arrow will reach the maximum height $\displaystyle \frac{256}{5}$.\\
Substituting $\displaystyle h=\frac{128}{5}$ into the equation, we have
\begin{flalign*}
    \frac{128}{5}&=32t-5t^2\\
    -5t^2+32t-\frac{128}{5}&=0\\
    -25t^2+160t-128&=0\\
    t&=\frac{-160\pm \sqrt{160^2-4(-25)(-128)}}{2(-25)}\\
    t&=0.937\text{ or }5.46\text{ (corr. to 3 sig. fig.)}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 1
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  1,
  'Chinese',
  '求函數\ $y=x(x-2)$ 的定義域。',
  '求函數\ $y=x(x-2)$ 的定義域。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 1 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 1 AND language = 'Chinese'),
  '此函數的定義域是全部實數。',
  '此函數的定義域是全部實數。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 2
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  2,
  'Chinese',
  '求函數\ $y=\sqrt{2-3x}$ 的定義域。',
  '求函數\ $y=\sqrt{2-3x}$ 的定義域。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 2 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 2 AND language = 'Chinese'),
  '由於平方根中的數不能為負數，我們需要解\ $2-3x\geq 0$，得到\ $\displaystyle x\leq \frac{3}{2}$。 \\
因此，函數的定義域為\ $\displaystyle x\leq \frac{3}{2}$。',
  '由於平方根中的數不能為負數，我們需要解\ $2-3x\geq 0$，得到\ $\displaystyle x\leq \frac{3}{2}$。 \\
因此，函數的定義域為\ $\displaystyle x\leq \frac{3}{2}$。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 3
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  3,
  'Chinese',
  '求函數\ $y=\sqrt{x+3}$ 的定義域。',
  '求函數\ $y=\sqrt{x+3}$ 的定義域。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 3 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 3 AND language = 'Chinese'),
  '由於平方根中的數不能為負數，我們需要解\ $x+3\geq 0$，得到\ $x\geq -3$。 \\
因此，函數的定義域為\ $x\geq -3$。',
  '由於平方根中的數不能為負數，我們需要解\ $x+3\geq 0$，得到\ $x\geq -3$。 \\
因此，函數的定義域為\ $x\geq -3$。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 4
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  4,
  'Chinese',
  '求函數\ $\displaystyle y=\frac{1}{x^2-1}$ 的定義域。',
  '求函數\ $\displaystyle y=\frac{1}{x^2-1}$ 的定義域。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 4 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 4 AND language = 'Chinese'),
  '由於分母不能等於\ 0，我們解\ $x^2-1\ne 0$，得到\ $x\ne 1$ 或\ $-1$。 \\
因此，函數的定義域是除\ $x=1$ 和\ $x=-1$ 之外的所有實數。',
  '由於分母不能等於\ 0，我們解\ $x^2-1\ne 0$，得到\ $x\ne 1$ 或\ $-1$。 \\
因此，函數的定義域是除\ $x=1$ 和\ $x=-1$ 之外的所有實數。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 5
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  5,
  'Chinese',
  '求函數\ $\displaystyle y=\sqrt{\frac{1}{x+1}}$ 的定義域。',
  '求函數\ $\displaystyle y=\sqrt{\frac{1}{x+1}}$ 的定義域。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 5 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 5 AND language = 'Chinese'),
  '由於分母不能等於\ 0，我們解\ $x+1\ne 0$，得到\ $x\ne -1$。 \\
且平方根下的數不能為負數，我們解\ $\displaystyle \frac{1}{x+1}\geq 0$，得到\ $x\geq -1$。 \\
結合兩個條件，我們得到函數的定義域為\ $x>-1$。',
  '由於分母不能等於\ 0，我們解\ $x+1\ne 0$，得到\ $x\ne -1$。 \\
且平方根下的數不能為負數，我們解\ $\displaystyle \frac{1}{x+1}\geq 0$，得到\ $x\geq -1$。 \\
結合兩個條件，我們得到函數的定義域為\ $x>-1$。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 6
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  6,
  'Chinese',
  '如果\ $f(x)=ax^2+bx$、$f(1)=3$ 和\ $f(-1)=-1$，求\ $f(2)$ 的值。',
  '如果\ $f(x)=ax^2+bx$、$f(1)=3$ 和\ $f(-1)=-1$，求\ $f(2)$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 6 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 6 AND language = 'Chinese'),
  '\begin{flalign}
    f(1)&=3 \nonumber \\
    a+b&=3 \tag{1} \\
    \nonumber \\
    f(-1)&=-1 \nonumber \\
    a-b&=-1 \tag{2}
\end{flalign}
解該方程，我們得到\ $a=1$ 和\ $b=2$。 \\
因此，$f(2)=(1)(2)^2+(2)(2)=8$。',
  '\begin{flalign}
    f(1)&=3 \nonumber \\
    a+b&=3 \tag{1} \\
    \nonumber \\
    f(-1)&=-1 \nonumber \\
    a-b&=-1 \tag{2}
\end{flalign}
解該方程，我們得到\ $a=1$ 和\ $b=2$。 \\
因此，$f(2)=(1)(2)^2+(2)(2)=8$。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 7
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  7,
  'Chinese',
  '如果\ $f(x)=k(x-2)^2+4$ 和\ $f(0)=20$，求\ $f(4)$ 的值。',
  '如果\ $f(x)=k(x-2)^2+4$ 和\ $f(0)=20$，求\ $f(4)$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 7 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 7 AND language = 'Chinese'),
  '\begin{flalign*}
    f(0)&=20\\
    k(0-2)^2+4&=20\\
    4k+4&=20\\
    4k&=16\\
    k&=4
\end{flalign*}
因此，$f(4)=4(4-2)^2+4=20$。',
  '\begin{flalign*}
    f(0)&=20\\
    k(0-2)^2+4&=20\\
    4k+4&=20\\
    4k&=16\\
    k&=4
\end{flalign*}
因此，$f(4)=4(4-2)^2+4=20$。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 8
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  8,
  'Chinese',
  '如果\ $f(x)=kx^2+4$ 和\ $f(1)=9$，求\ $f(-1)$ 的值。',
  '如果\ $f(x)=kx^2+4$ 和\ $f(1)=9$，求\ $f(-1)$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 8 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 8 AND language = 'Chinese'),
  '\begin{flalign*}
    f(1)&=9\\
    k(1)^2+4&=9\\
    k+4&=9\\
    k&=5
\end{flalign*}
因此，$f(-1)=(5)(-1)^2+4=9$。',
  '\begin{flalign*}
    f(1)&=9\\
    k(1)^2+4&=9\\
    k+4&=9\\
    k&=5
\end{flalign*}
因此，$f(-1)=(5)(-1)^2+4=9$。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 9
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  9,
  'Chinese',
  '如果\ $f(x)=k(x+1)^2-5$\ 和\ $f(2)=4$，求\ $f(-3)$ 的值。',
  '如果\ $f(x)=k(x+1)^2-5$\ 和\ $f(2)=4$，求\ $f(-3)$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 9 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 9 AND language = 'Chinese'),
  '\begin{flalign*}
    f(2)&=4\\
    k(2+1)^2-5&=4\\
    9k-5&=4\\
    9k&=9\\
    k&=1
\end{flalign*}
因此，$f(-3)=(1)(-3+1)^2-5=-1$。',
  '\begin{flalign*}
    f(2)&=4\\
    k(2+1)^2-5&=4\\
    9k-5&=4\\
    9k&=9\\
    k&=1
\end{flalign*}
因此，$f(-3)=(1)(-3+1)^2-5=-1$。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 10
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  10,
  'Chinese',
  '如果\ $f(x)=3x^2+kx+2$ 和\ $f(1)=8$，求\ $f(-1)$ 的值。',
  '如果\ $f(x)=3x^2+kx+2$ 和\ $f(1)=8$，求\ $f(-1)$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 10 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 10 AND language = 'Chinese'),
  '\begin{flalign*}
    f(1)&=8\\
    3(1)^2+k(1)+2&=8\\
    3+k+2&=8\\
    k&=3
\end{flalign*}
因此，$f(-1)=3(-1)^2+(3)(-1)+2=2$。',
  '\begin{flalign*}
    f(1)&=8\\
    3(1)^2+k(1)+2&=8\\
    3+k+2&=8\\
    k&=3
\end{flalign*}
因此，$f(-1)=3(-1)^2+(3)(-1)+2=2$。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 11
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  11,
  'Chinese',
  '如果\ $f(x)=x^2+4x+3$ 和\ $f(k)=0$，求\ $k$ 的值。',
  '如果\ $f(x)=x^2+4x+3$ 和\ $f(k)=0$，求\ $k$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 11 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 11 AND language = 'Chinese'),
  '\begin{flalign*}
    f(k)&=0\\
    k^2+4k+3&=0\\
    (k+1)(k+3)&=0\\
    k&=-1\text{ 或\ }-3
\end{flalign*}',
  '\begin{flalign*}
    f(k)&=0\\
    k^2+4k+3&=0\\
    (k+1)(k+3)&=0\\
    k&=-1\text{ 或\ }-3
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 12
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  12,
  'Chinese',
  '如果\ $f(x)=x^2-6x+9$ 和\ $f(k)=16$，求\ $k$ 的值。',
  '如果\ $f(x)=x^2-6x+9$ 和\ $f(k)=16$，求\ $k$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 12 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 12 AND language = 'Chinese'),
  '\begin{flalign*}
    f(k)&=16\\
    k^2-6k+9&=16\\
    k^2-6k-7&=0\\
    (k-7)(k+1)&=0\\
    k&=7\text{ 或\ }-1
\end{flalign*}',
  '\begin{flalign*}
    f(k)&=16\\
    k^2-6k+9&=16\\
    k^2-6k-7&=0\\
    (k-7)(k+1)&=0\\
    k&=7\text{ 或\ }-1
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 13
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  13,
  'Chinese',
  '如果\ $f(x)=\sqrt{x+6}$ 和\ $f(k)=3$，求\ $k$ 的值。',
  '如果\ $f(x)=\sqrt{x+6}$ 和\ $f(k)=3$，求\ $k$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 13 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 13 AND language = 'Chinese'),
  '\begin{flalign*}
    f(k)&=3\\
    \sqrt{k+6}&=3\\
    k+6&=3^2\\
    k+6&=9\\
    k&=3
\end{flalign*}',
  '\begin{flalign*}
    f(k)&=3\\
    \sqrt{k+6}&=3\\
    k+6&=3^2\\
    k+6&=9\\
    k&=3
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 14
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  14,
  'Chinese',
  '如果\ $\displaystyle f(x)=\frac{2x+3}{x-1}$ 和\ $f(3k)=5$，求\ $k$ 的值。',
  '如果\ $\displaystyle f(x)=\frac{2x+3}{x-1}$ 和\ $f(3k)=5$，求\ $k$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 14 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 14 AND language = 'Chinese'),
  '\begin{flalign*}
    f(3k)&=5\\
    \frac{2(3k)+3}{3k-1}&=5\\
    6k+3&=5(3k-1)\\
    6k+3&=15k-5\\
    9k&=8\\
    k&=\frac{8}{9}
\end{flalign*}',
  '\begin{flalign*}
    f(3k)&=5\\
    \frac{2(3k)+3}{3k-1}&=5\\
    6k+3&=5(3k-1)\\
    6k+3&=15k-5\\
    9k&=8\\
    k&=\frac{8}{9}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 15
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  15,
  'Chinese',
  '如果\ $f(x)=\log_2(x-1)$ 和\ $f(k)=3$，求\ $k$ 的值。',
  '如果\ $f(x)=\log_2(x-1)$ 和\ $f(k)=3$，求\ $k$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 15 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 15 AND language = 'Chinese'),
  '\begin{flalign*}
    f(k)&=3\\
    \log_2{(k-1)}&=3\\
    k-1&=2^3\\
    k-1&=8\\
    k&=9
\end{flalign*}',
  '\begin{flalign*}
    f(k)&=3\\
    \log_2{(k-1)}&=3\\
    k-1&=2^3\\
    k-1&=8\\
    k&=9
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 16
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  16,
  'Chinese',
  '如果\ $f(x)=x^2-3kx+2$ 和\ $f(k+1)=f(-k)$，求\ $k$ 的值。',
  '如果\ $f(x)=x^2-3kx+2$ 和\ $f(k+1)=f(-k)$，求\ $k$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 16 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 16 AND language = 'Chinese'),
  '\begin{flalign*}
    f(k+1)&=f(-k)\\
    (k+1)^2-3k(k+1)+2&=(-k)^2-3k(-k)+2\\
    k^2+2k+1-3k^2-3k+2&=k^2+3k^2+2\\
    -2k^2-k+3&=4k^2+2\\
    6k^2+k-1&=0\\
    (3k-1)(2k+1)&=0\\
    k&=\frac{1}{3}\text{ 或\ }-\frac{1}{2}
\end{flalign*}',
  '\begin{flalign*}
    f(k+1)&=f(-k)\\
    (k+1)^2-3k(k+1)+2&=(-k)^2-3k(-k)+2\\
    k^2+2k+1-3k^2-3k+2&=k^2+3k^2+2\\
    -2k^2-k+3&=4k^2+2\\
    6k^2+k-1&=0\\
    (3k-1)(2k+1)&=0\\
    k&=\frac{1}{3}\text{ 或\ }-\frac{1}{2}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 17
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  17,
  'Chinese',
  '如果\ $f(x)=x^2+2kx+8$ 和\ $f(k)=f(-k)$，求\ $k$ 的值。',
  '如果\ $f(x)=x^2+2kx+8$ 和\ $f(k)=f(-k)$，求\ $k$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 17 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 17 AND language = 'Chinese'),
  '\begin{flalign*}
    f(k)&=f(-k)\\
    k^2+2k(k)+8&=(-k)^2+2k(-k)+8\\
    k^2+2k^2+8&=k^2-2k^2+8\\
    3k^2+8&=-k^2+8\\
    4k^2&=0\\
    k&=0
\end{flalign*}',
  '\begin{flalign*}
    f(k)&=f(-k)\\
    k^2+2k(k)+8&=(-k)^2+2k(-k)+8\\
    k^2+2k^2+8&=k^2-2k^2+8\\
    3k^2+8&=-k^2+8\\
    4k^2&=0\\
    k&=0
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 18
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  18,
  'Chinese',
  '如果\ $f(x)=2x^2-kx+4$ 和\ $f(k)=f(0)$，求\ $k$ 的值。',
  '如果\ $f(x)=2x^2-kx+4$ 和\ $f(k)=f(0)$，求\ $k$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 18 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 18 AND language = 'Chinese'),
  '\begin{flalign*}
    f(k)&=f(0)\\
    2k^2-k(k)+4&=2(0)^2-k(0)+4\\
    2k^2-k^2+4&=4\\
    k^2&=0\\
    k&=0
\end{flalign*}',
  '\begin{flalign*}
    f(k)&=f(0)\\
    2k^2-k(k)+4&=2(0)^2-k(0)+4\\
    2k^2-k^2+4&=4\\
    k^2&=0\\
    k&=0
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 19
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  19,
  'Chinese',
  '如果\ $f(x)=x^2-2x+k$ 和\ $f(k)=f(3)$，求\ $k$ 的值。',
  '如果\ $f(x)=x^2-2x+k$ 和\ $f(k)=f(3)$，求\ $k$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 19 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 19 AND language = 'Chinese'),
  '\begin{flalign*}
    f(k)&=f(3)\\
    k^2-2k+k&=3^2-2(3)+k\\
    k^2-k&=9-6+k\\
    k^2-2k-3&=0\\
    (k-3)(k+1)&=0\\
    k&=3\text{ 或\ }-1
\end{flalign*}',
  '\begin{flalign*}
    f(k)&=f(3)\\
    k^2-2k+k&=3^2-2(3)+k\\
    k^2-k&=9-6+k\\
    k^2-2k-3&=0\\
    (k-3)(k+1)&=0\\
    k&=3\text{ 或\ }-1
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 20
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  20,
  'Chinese',
  '如果\ $f(x)=x^2+kx+3k$ 和\ $f(k)=f(2)$，求\ $k$ 的值。',
  '如果\ $f(x)=x^2+kx+3k$ 和\ $f(k)=f(2)$，求\ $k$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 20 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 20 AND language = 'Chinese'),
  '\begin{flalign*}
    f(k)&=f(2)\\
    k^2+k(k)+3k&=2^2+k(2)+3k\\
    k^2+k^2+3k&=4+2k+3k\\
    2k^2+3k&=5k+4\\
    2k^2-2k-4&=0\\
    k^2-k-2&=0\\
    (k-2)(k+1)&=0\\
    k&=2\text{ 或\ }-1
\end{flalign*}',
  '\begin{flalign*}
    f(k)&=f(2)\\
    k^2+k(k)+3k&=2^2+k(2)+3k\\
    k^2+k^2+3k&=4+2k+3k\\
    2k^2+3k&=5k+4\\
    2k^2-2k-4&=0\\
    k^2-k-2&=0\\
    (k-2)(k+1)&=0\\
    k&=2\text{ 或\ }-1
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 21
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  21,
  'Chinese',
  '設\ $f(x)=2x+5$ 和\ $g(x)=4-x$。若\ $f(3k)+2=g(2k-1)$，求\ $k$ 的值。',
  '設\ $f(x)=2x+5$ 和\ $g(x)=4-x$。若\ $f(3k)+2=g(2k-1)$，求\ $k$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 21 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 21 AND language = 'Chinese'),
  '\begin{flalign*}
    f(3k)+2&=g(2k-1)\\
    2(3k)+5+2&=4-(2k-1)\\
    6k+7&=5-2k\\
    8k&=-2\\
    k&=-\frac{1}{4}
\end{flalign*}',
  '\begin{flalign*}
    f(3k)+2&=g(2k-1)\\
    2(3k)+5+2&=4-(2k-1)\\
    6k+7&=5-2k\\
    8k&=-2\\
    k&=-\frac{1}{4}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 22
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  22,
  'Chinese',
  '設\ $f(x)=x^2-1$ 和\ $g(x)=2x+2$。若\ $f(k+1)=g(2k-1)$，求\ $k$ 的值。',
  '設\ $f(x)=x^2-1$ 和\ $g(x)=2x+2$。若\ $f(k+1)=g(2k-1)$，求\ $k$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 22 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 22 AND language = 'Chinese'),
  '\begin{flalign*}
    f(k+1)&=g(2k-1)\\
    (k+1)^2-1&=2(2k-1)+2\\
    k^2+2k+1-1&=4k-2+2\\
    k^2+2k&=4k\\
    k^2-2k&=0\\
    k(k-2)&=0\\
    k&=0\text{ 或\ }2
\end{flalign*}',
  '\begin{flalign*}
    f(k+1)&=g(2k-1)\\
    (k+1)^2-1&=2(2k-1)+2\\
    k^2+2k+1-1&=4k-2+2\\
    k^2+2k&=4k\\
    k^2-2k&=0\\
    k(k-2)&=0\\
    k&=0\text{ 或\ }2
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 23
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  23,
  'Chinese',
  '設\ $f(x)=3-x$ 和\ $g(x)=2x+4$。若\ $f(4k+1)=g(k-2)$，求\ $k$ 的值。',
  '設\ $f(x)=3-x$ 和\ $g(x)=2x+4$。若\ $f(4k+1)=g(k-2)$，求\ $k$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 23 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 23 AND language = 'Chinese'),
  '\begin{flalign*}
    f(4k+1)&=g(k-2)\\
    3-(4k+1)&=2(k-2)+4\\
    3-4k-1&=2k-4+4\\
    2-4k&=2k\\
    6k&=2\\
    k&=\frac{1}{3}
\end{flalign*}',
  '\begin{flalign*}
    f(4k+1)&=g(k-2)\\
    3-(4k+1)&=2(k-2)+4\\
    3-4k-1&=2k-4+4\\
    2-4k&=2k\\
    6k&=2\\
    k&=\frac{1}{3}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 24
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  24,
  'Chinese',
  '設\ $f(x)=x^2$ 和\ $g(x)=3x-1$。若\ $f(2k+1)=g(k+4)$，求\ $k$ 的值。',
  '設\ $f(x)=x^2$ 和\ $g(x)=3x-1$。若\ $f(2k+1)=g(k+4)$，求\ $k$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 24 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 24 AND language = 'Chinese'),
  '\begin{flalign*}
    f(2k+1)&=g(k+4)\\
    (2k+1)^2&=3(k+4)-1\\
    4k^2+4k+1&=3k+12-1\\
    4k^2+4k+1&=3k+11\\
    4k^2+k-10&=0\\
    k&=\frac{-1\pm \sqrt{1^2-4(4)(-10)}}{2(4)}\\
    &=\frac{-1\pm \sqrt{161}}{8}
\end{flalign*}',
  '\begin{flalign*}
    f(2k+1)&=g(k+4)\\
    (2k+1)^2&=3(k+4)-1\\
    4k^2+4k+1&=3k+12-1\\
    4k^2+4k+1&=3k+11\\
    4k^2+k-10&=0\\
    k&=\frac{-1\pm \sqrt{1^2-4(4)(-10)}}{2(4)}\\
    &=\frac{-1\pm \sqrt{161}}{8}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 25
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  25,
  'Chinese',
  '設\ $f(x)=2x^2-x$ 和\ $g(x)=x+6$。若\ $f(k-1)=g(2k+2)$，求\ $k$ 的值。',
  '設\ $f(x)=2x^2-x$ 和\ $g(x)=x+6$。若\ $f(k-1)=g(2k+2)$，求\ $k$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 25 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 25 AND language = 'Chinese'),
  '\begin{flalign*}
    f(k-1)&=g(2k+2)\\
    2(k-1)^2-(k-1)&=(2k+2)+6\\
    2\left(k^2-2k+1\right)-k+1&=2k+8\\
    2k^2-4k+2-k+1&=2k+8\\
    2k^2-5k+3&=2k+8\\
    2k^2-7k-5&=0\\
    k&=\frac{-(-7)\pm \sqrt{(-7)^2-4(2)(-5)}}{2(2)}\\
    &=\frac{7\pm \sqrt{89}}{4}
\end{flalign*}',
  '\begin{flalign*}
    f(k-1)&=g(2k+2)\\
    2(k-1)^2-(k-1)&=(2k+2)+6\\
    2\left(k^2-2k+1\right)-k+1&=2k+8\\
    2k^2-4k+2-k+1&=2k+8\\
    2k^2-5k+3&=2k+8\\
    2k^2-7k-5&=0\\
    k&=\frac{-(-7)\pm \sqrt{(-7)^2-4(2)(-5)}}{2(2)}\\
    &=\frac{7\pm \sqrt{89}}{4}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 26
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  26,
  'Chinese',
  '已知\ $f(x)=(x+3)(x-1)+ax+b$。若\ $f(1)=5$ 和\ $f(-3)=-1$，求\ $a$ 和\ $b$ 的值。',
  '已知\ $f(x)=(x+3)(x-1)+ax+b$。若\ $f(1)=5$ 和\ $f(-3)=-1$，求\ $a$ 和\ $b$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 26 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 26 AND language = 'Chinese'),
  '\begin{flalign}
    f(1)&=5 \nonumber \\
    (1+3)(1-1)+a(1)+b&=5 \nonumber \\
    a+b&=5 \tag{1}\\
    \nonumber \\
    f(-3)&=-1 \nonumber \\
    (-3+3)(-3-1)+a(-3)+b&=-1 \nonumber \\
    -3a+b&=-1 \tag{2}
\end{flalign}
$(1)-(2)$，我們可以得到
\begin{flalign*}
    (a+b)-(-3a+b)&=5-(-1)\\
    4a&=6\\
    a&=\frac{3}{2}
\end{flalign*}
將\ $\displaystyle a=\frac{3}{2}$ 代入\ $(1)$，我們可以得到
\begin{flalign*}
    \frac{3}{2}+b&=5\\
    b&=\frac{7}{2}
\end{flalign*}
因此，我們可以得到\ $\displaystyle a=\frac{3}{2}$ 和\ $\displaystyle b=\frac{7}{2}$。',
  '\begin{flalign}
    f(1)&=5 \nonumber \\
    (1+3)(1-1)+a(1)+b&=5 \nonumber \\
    a+b&=5 \tag{1}\\
    \nonumber \\
    f(-3)&=-1 \nonumber \\
    (-3+3)(-3-1)+a(-3)+b&=-1 \nonumber \\
    -3a+b&=-1 \tag{2}
\end{flalign}
$(1)-(2)$，我們可以得到
\begin{flalign*}
    (a+b)-(-3a+b)&=5-(-1)\\
    4a&=6\\
    a&=\frac{3}{2}
\end{flalign*}
將\ $\displaystyle a=\frac{3}{2}$ 代入\ $(1)$，我們可以得到
\begin{flalign*}
    \frac{3}{2}+b&=5\\
    b&=\frac{7}{2}
\end{flalign*}
因此，我們可以得到\ $\displaystyle a=\frac{3}{2}$ 和\ $\displaystyle b=\frac{7}{2}$。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 27
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  27,
  'Chinese',
  '已知\ $f(x)=(x-4)(x+1)+ax+b$。若\ $f(2)=10$ 和\ $f(-2)=-6$，求\ $a$ 和\ $b$ 的值。',
  '已知\ $f(x)=(x-4)(x+1)+ax+b$。若\ $f(2)=10$ 和\ $f(-2)=-6$，求\ $a$ 和\ $b$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 27 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 27 AND language = 'Chinese'),
  '\begin{flalign}
    f(2)&=10 \nonumber \\
    (2-4)(2+1)+a(2)+b&=10 \nonumber \\
    -6+2a+b&=10 \nonumber \\
    2a+b&=16 \tag{1} \\
    \nonumber \\
    f(-2)&=-6 \nonumber \\
    (-2-4)(-2+1)+a(-2)+b&=-6 \nonumber \\
    6-2a+b&=-6 \nonumber \\
    -2a+b&=-12 \tag{2}
\end{flalign}
$(1)+(2)$，我們可以得到
\begin{flalign*}
    (2a+b)+(-2a+b)&=16+(-12)\\
    2b&=4\\
    b&=2
\end{flalign*}
將\ $b=2$ 代入\ $(1)$，我們可以得到
\begin{flalign*}
    2a+2&=16\\
    2a&=14\\
    a&=7
\end{flalign*}
因此，我們可以得到\ $a=7$ 和\ $b=2$。',
  '\begin{flalign}
    f(2)&=10 \nonumber \\
    (2-4)(2+1)+a(2)+b&=10 \nonumber \\
    -6+2a+b&=10 \nonumber \\
    2a+b&=16 \tag{1} \\
    \nonumber \\
    f(-2)&=-6 \nonumber \\
    (-2-4)(-2+1)+a(-2)+b&=-6 \nonumber \\
    6-2a+b&=-6 \nonumber \\
    -2a+b&=-12 \tag{2}
\end{flalign}
$(1)+(2)$，我們可以得到
\begin{flalign*}
    (2a+b)+(-2a+b)&=16+(-12)\\
    2b&=4\\
    b&=2
\end{flalign*}
將\ $b=2$ 代入\ $(1)$，我們可以得到
\begin{flalign*}
    2a+2&=16\\
    2a&=14\\
    a&=7
\end{flalign*}
因此，我們可以得到\ $a=7$ 和\ $b=2$。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 28
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  28,
  'Chinese',
  '已知\ $f(x)=(x+5)(x-3)+ax+b$。若\ $f(0)=-10$ 和\ $f(2)=0$，求\ $a$ 和\ $b$ 的值。',
  '已知\ $f(x)=(x+5)(x-3)+ax+b$。若\ $f(0)=-10$ 和\ $f(2)=0$，求\ $a$ 和\ $b$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 28 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 28 AND language = 'Chinese'),
  '\begin{flalign}
    f(0)&=-10 \nonumber \\
    (0+5)(0-3)+a(0)+b&=-10 \nonumber \\
    -15+b&=-10 \nonumber \\
    b&=5 \nonumber \\
    \nonumber \\
    f(2)&=0 \nonumber \\
    (2+5)(2-3)+a(2)+b&=0 \nonumber \\
    -7+2a+b&=0 \nonumber \\
    2a+b&=7 \tag{1}
\end{flalign}
將\ $b=5$ 代入\ $(1)$，我們可以得到
\begin{flalign*}
    2a+5&=7\\
    2a&=2\\
    a&=1
\end{flalign*}
因此，我們可以得到\ $a=1$ 和\ $b=5$。',
  '\begin{flalign}
    f(0)&=-10 \nonumber \\
    (0+5)(0-3)+a(0)+b&=-10 \nonumber \\
    -15+b&=-10 \nonumber \\
    b&=5 \nonumber \\
    \nonumber \\
    f(2)&=0 \nonumber \\
    (2+5)(2-3)+a(2)+b&=0 \nonumber \\
    -7+2a+b&=0 \nonumber \\
    2a+b&=7 \tag{1}
\end{flalign}
將\ $b=5$ 代入\ $(1)$，我們可以得到
\begin{flalign*}
    2a+5&=7\\
    2a&=2\\
    a&=1
\end{flalign*}
因此，我們可以得到\ $a=1$ 和\ $b=5$。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 29
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  29,
  'Chinese',
  '已知\ $f(x)=(x+2)(x+4)+ax+b$。若\ $f(-1)=5$ 和\ $f(-3)=-5$，求\ $a$ 和\ $b$ 的值。',
  '已知\ $f(x)=(x+2)(x+4)+ax+b$。若\ $f(-1)=5$ 和\ $f(-3)=-5$，求\ $a$ 和\ $b$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 29 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 29 AND language = 'Chinese'),
  '\begin{flalign}
    f(-1)&=5 \nonumber \\
    (-1+2)(-1+4)+a(-1)+b&=5 \nonumber \\
    3-a+b&=5 \nonumber \\
    -a+b&=2 \tag{1} \\
    \nonumber \\
    f(-3)&=-5 \nonumber \\
    (-3+2)(-3+4)+a(-3)+b&=-5 \nonumber \\
    -1-3a+b&=-5 \nonumber \\
    -3a+b&=-4 \tag{2}
\end{flalign}
$(1)-(2)$，我們可以得到
\begin{flalign*}
    (-a+b)-(-3a+b)&=2-(-4)\\
    2a&=6\\
    a&=3
\end{flalign*}
將\ $a=3$ 代入\ $(1)$，我們可以得到
\begin{flalign*}
    -3+b&=2\\
    b&=5
\end{flalign*}
因此，我們可以得到\ $a=3$ 和\ $b=5$。',
  '\begin{flalign}
    f(-1)&=5 \nonumber \\
    (-1+2)(-1+4)+a(-1)+b&=5 \nonumber \\
    3-a+b&=5 \nonumber \\
    -a+b&=2 \tag{1} \\
    \nonumber \\
    f(-3)&=-5 \nonumber \\
    (-3+2)(-3+4)+a(-3)+b&=-5 \nonumber \\
    -1-3a+b&=-5 \nonumber \\
    -3a+b&=-4 \tag{2}
\end{flalign}
$(1)-(2)$，我們可以得到
\begin{flalign*}
    (-a+b)-(-3a+b)&=2-(-4)\\
    2a&=6\\
    a&=3
\end{flalign*}
將\ $a=3$ 代入\ $(1)$，我們可以得到
\begin{flalign*}
    -3+b&=2\\
    b&=5
\end{flalign*}
因此，我們可以得到\ $a=3$ 和\ $b=5$。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 30
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  30,
  'Chinese',
  '已知\ $f(x)=(x+7)(x-1)+ax+b$。若\ $f(3)=20$ 和\ $f(-3)=-10$，求\ $a$ 和\ $b$ 的值。',
  '已知\ $f(x)=(x+7)(x-1)+ax+b$。若\ $f(3)=20$ 和\ $f(-3)=-10$，求\ $a$ 和\ $b$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 30 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 30 AND language = 'Chinese'),
  '\begin{flalign}
    f(3)&=20 \nonumber \\
    (3+7)(3-1)+a(3)+b&=20 \nonumber \\
    20+3a+b&=20 \nonumber \\
    3a+b&=0 \tag{1} \\
    \nonumber \\
    f(-3)&=-10 \nonumber \\
    (-3+7)(-3-1)+a(-3)+b&=-10 \nonumber \\
    -16-3a+b&=-10 \nonumber \\
    -3a+b&=6 \tag{2}
\end{flalign}
$(2)-(1)$，我們可以得到
\begin{flalign*}
    (-3a+b)-(3a+b)&=6-0\\
    -6a&=6\\
    a&=-1
\end{flalign*}
將\ $a=-1$ 代入\ $(1)$，我們可以得到
\begin{flalign*}
    3(-1)+b&=0\\
    -3+b&=0\\
    b&=3
\end{flalign*}
因此，我們可以得到\ $a=-1$ 和\ $b=3$。',
  '\begin{flalign}
    f(3)&=20 \nonumber \\
    (3+7)(3-1)+a(3)+b&=20 \nonumber \\
    20+3a+b&=20 \nonumber \\
    3a+b&=0 \tag{1} \\
    \nonumber \\
    f(-3)&=-10 \nonumber \\
    (-3+7)(-3-1)+a(-3)+b&=-10 \nonumber \\
    -16-3a+b&=-10 \nonumber \\
    -3a+b&=6 \tag{2}
\end{flalign}
$(2)-(1)$，我們可以得到
\begin{flalign*}
    (-3a+b)-(3a+b)&=6-0\\
    -6a&=6\\
    a&=-1
\end{flalign*}
將\ $a=-1$ 代入\ $(1)$，我們可以得到
\begin{flalign*}
    3(-1)+b&=0\\
    -3+b&=0\\
    b&=3
\end{flalign*}
因此，我們可以得到\ $a=-1$ 和\ $b=3$。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 31
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  31,
  'Chinese',
  '設\ $f(x)=3x^2-2x+1$。若\ $g(x+1)=f(x)$，求\ $g(x)$。',
  '設\ $f(x)=3x^2-2x+1$。若\ $g(x+1)=f(x)$，求\ $g(x)$。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 31 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 31 AND language = 'Chinese'),
  '\begin{flalign*}
    g(x)&=g\left((x-1)+1\right)\\
    &=f(x-1)\\
    &=3(x-1)^2-2(x-1)+1\\
    &=3\left(x^2-2x+1\right)-2x+2+1\\
    &=3x^2-6x+3-2x+3\\
    &=3x^2-8x+6
\end{flalign*}',
  '\begin{flalign*}
    g(x)&=g\left((x-1)+1\right)\\
    &=f(x-1)\\
    &=3(x-1)^2-2(x-1)+1\\
    &=3\left(x^2-2x+1\right)-2x+2+1\\
    &=3x^2-6x+3-2x+3\\
    &=3x^2-8x+6
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 32
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  32,
  'Chinese',
  '設\ $f(x)=2x^2+4x+3$。若\ $g(2x)=f(x)$，求\ $g(x)$。',
  '設\ $f(x)=2x^2+4x+3$。若\ $g(2x)=f(x)$，求\ $g(x)$。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 32 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 32 AND language = 'Chinese'),
  '\begin{flalign*}
    g(x)&=g\left(2\left(\frac{x}{2}\right)\right)\\
    &=f\left(\frac{x}{2}\right)\\
    &=2\left(\frac{x}{2}\right)^2+4\left(\frac{x}{2}\right)+3\\
    &=\frac{x^2}{2}+2x+3
\end{flalign*}',
  '\begin{flalign*}
    g(x)&=g\left(2\left(\frac{x}{2}\right)\right)\\
    &=f\left(\frac{x}{2}\right)\\
    &=2\left(\frac{x}{2}\right)^2+4\left(\frac{x}{2}\right)+3\\
    &=\frac{x^2}{2}+2x+3
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 33
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  33,
  'Chinese',
  '設\ $f(x)=5x^2+3x-2$。若\ $g(2x-1)=f(x)$，求\ $g(x)$。',
  '設\ $f(x)=5x^2+3x-2$。若\ $g(2x-1)=f(x)$，求\ $g(x)$。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 33 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 33 AND language = 'Chinese'),
  '\begin{flalign*}
    g(x)&=g\left(2\left(\frac{x+1}{2}\right)-1\right)\\
    &=f\left(\frac{x+1}{2}\right)\\
    &=5\left(\frac{x+1}{2}\right)^2+3\left(\frac{x+1}{2}\right)-2\\
    &=\frac{5\left(x^2+2x+1\right)}{4}+\frac{3(x+1)}{2}-2\\
    &=\frac{5\left(x^2+2x+1\right)+6(x+1)-4(2)}{4}\\
    &=\frac{5x^2+10x+5+6x+6-8}{4}\\
    &=\frac{5x^2+16x+3}{4}
\end{flalign*}',
  '\begin{flalign*}
    g(x)&=g\left(2\left(\frac{x+1}{2}\right)-1\right)\\
    &=f\left(\frac{x+1}{2}\right)\\
    &=5\left(\frac{x+1}{2}\right)^2+3\left(\frac{x+1}{2}\right)-2\\
    &=\frac{5\left(x^2+2x+1\right)}{4}+\frac{3(x+1)}{2}-2\\
    &=\frac{5\left(x^2+2x+1\right)+6(x+1)-4(2)}{4}\\
    &=\frac{5x^2+10x+5+6x+6-8}{4}\\
    &=\frac{5x^2+16x+3}{4}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 34
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  34,
  'Chinese',
  '設\ $f(x)=x^2+x+1$。若\ $g(x+3)=f(x-1)$，求\ $g(x)$。',
  '設\ $f(x)=x^2+x+1$。若\ $g(x+3)=f(x-1)$，求\ $g(x)$。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 34 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 34 AND language = 'Chinese'),
  '\begin{flalign*}
    g(x)&=g\left((x-3)+3\right)\\
    &=f\left((x-3)-1\right)\\
    &=f(x-4)\\
    &=(x-4)^2+(x-4)+1\\
    &=x^2-8x+16+x-4+1\\
    &=x^2-7x+13
\end{flalign*}',
  '\begin{flalign*}
    g(x)&=g\left((x-3)+3\right)\\
    &=f\left((x-3)-1\right)\\
    &=f(x-4)\\
    &=(x-4)^2+(x-4)+1\\
    &=x^2-8x+16+x-4+1\\
    &=x^2-7x+13
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 35
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  35,
  'Chinese',
  '設\ $f(x)=-x^2+4x-5$。若\ $g(x-4)=f(2-x)$，求\ $g(x)$。',
  '設\ $f(x)=-x^2+4x-5$。若\ $g(x-4)=f(2-x)$，求\ $g(x)$。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 35 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 35 AND language = 'Chinese'),
  '\begin{flalign*}
    g(x)&=g\left((x+4)-4\right)\\
    &=f\left(2-(x+4)\right)\\
    &=f(-x-2)\\
    &=-(-x-2)^2+4(-x-2)-5\\
    &=-\left(x^2+4x+4\right)-4x-8-5\\
    &=-x^2-4x-4-4x-13\\
    &=-x^2-8x-17
\end{flalign*}',
  '\begin{flalign*}
    g(x)&=g\left((x+4)-4\right)\\
    &=f\left(2-(x+4)\right)\\
    &=f(-x-2)\\
    &=-(-x-2)^2+4(-x-2)-5\\
    &=-\left(x^2+4x+4\right)-4x-8-5\\
    &=-x^2-4x-4-4x-13\\
    &=-x^2-8x-17
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 36
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  36,
  'Chinese',
  '設\ $f(x)=6x^2-x+8$。若\ $\displaystyle g\left(\frac{x}{2}\right)=f(x-2)$，求\ $g(x)$。',
  '設\ $f(x)=6x^2-x+8$。若\ $\displaystyle g\left(\frac{x}{2}\right)=f(x-2)$，求\ $g(x)$。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 36 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 36 AND language = 'Chinese'),
  '\begin{flalign*}
    g(x)&=g\left(\frac{2x}{2}\right)\\
    &=f(2x-2)\\
    &=6(2x-2)^2-(2x-2)+8\\
    &=6\left(4x^2-8x+4\right)-2x+2+8\\
    &=24x^2-48x+24-2x+10\\
    &=24x^2-50x+34
\end{flalign*}',
  '\begin{flalign*}
    g(x)&=g\left(\frac{2x}{2}\right)\\
    &=f(2x-2)\\
    &=6(2x-2)^2-(2x-2)+8\\
    &=6\left(4x^2-8x+4\right)-2x+2+8\\
    &=24x^2-48x+24-2x+10\\
    &=24x^2-50x+34
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 37
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  37,
  'Chinese',
  '設\ $f(x)=x^2-3x+4$。若\ $g(x+2)=f(2x)$，求\ $g(x)$。',
  '設\ $f(x)=x^2-3x+4$。若\ $g(x+2)=f(2x)$，求\ $g(x)$。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 37 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 37 AND language = 'Chinese'),
  '\begin{flalign*}
    g(x)&=g\left((x-2)+2\right)\\
    &=f\left(2(x-2)\right)\\
    &=f(2x-4)\\
    &=(2x-4)^2-3(2x-4)+4\\
    &=4x^2-16x+16-6x+12+4\\
    &=4x^2-22x+32
\end{flalign*}',
  '\begin{flalign*}
    g(x)&=g\left((x-2)+2\right)\\
    &=f\left(2(x-2)\right)\\
    &=f(2x-4)\\
    &=(2x-4)^2-3(2x-4)+4\\
    &=4x^2-16x+16-6x+12+4\\
    &=4x^2-22x+32
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 38
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  38,
  'Chinese',
  '設\ $f(x)=4x^2-x+9$。若\ $g(3x)=f(x+1)$，求\ $g(x)$。',
  '設\ $f(x)=4x^2-x+9$。若\ $g(3x)=f(x+1)$，求\ $g(x)$。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 38 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 38 AND language = 'Chinese'),
  '\begin{flalign*}
    g(x)&=g\left(3\left(\frac{x}{3}\right)\right)\\
    &=f\left(\frac{x}{3}+1\right)\\
    &=4\left(\frac{x}{3}+1\right)^2-\left(\frac{x}{3}+1\right)+9\\
    &=4\left(\frac{x^2}{9}+\frac{2x}{3}+1\right)-\frac{x}{3}-1+9\\
    &=\frac{4x^2}{9}+\frac{8x}{3}+4-\frac{x}{3}+8\\
    &=\frac{4x^2}{9}+\frac{7x}{3}+12
\end{flalign*}',
  '\begin{flalign*}
    g(x)&=g\left(3\left(\frac{x}{3}\right)\right)\\
    &=f\left(\frac{x}{3}+1\right)\\
    &=4\left(\frac{x}{3}+1\right)^2-\left(\frac{x}{3}+1\right)+9\\
    &=4\left(\frac{x^2}{9}+\frac{2x}{3}+1\right)-\frac{x}{3}-1+9\\
    &=\frac{4x^2}{9}+\frac{8x}{3}+4-\frac{x}{3}+8\\
    &=\frac{4x^2}{9}+\frac{7x}{3}+12
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 39
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  39,
  'Chinese',
  '設\ $f(x)=2x^2+5$。若\ $\displaystyle g\left(\frac{x}{3}-2\right)=f(x-1)$，求\ $g(x)$。',
  '設\ $f(x)=2x^2+5$。若\ $\displaystyle g\left(\frac{x}{3}-2\right)=f(x-1)$，求\ $g(x)$。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 39 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 39 AND language = 'Chinese'),
  '\begin{flalign*}
    g(x)&=g\left(\frac{3(x+2)}{3}-2\right)\\
    &=f\left(3(x+2)-1\right)\\
    &=f(3x+5)\\
    &=2(3x+5)^2+5\\
    &=2\left(9x^2+30x+25\right)+5\\
    &=18x^2+60x+50+5\\
    &=18x^2+60x+55
\end{flalign*}',
  '\begin{flalign*}
    g(x)&=g\left(\frac{3(x+2)}{3}-2\right)\\
    &=f\left(3(x+2)-1\right)\\
    &=f(3x+5)\\
    &=2(3x+5)^2+5\\
    &=2\left(9x^2+30x+25\right)+5\\
    &=18x^2+60x+50+5\\
    &=18x^2+60x+55
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 40
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  40,
  'Chinese',
  '設\ $f(x)=-2x^2+3x+7$。若\ $g(x+5)=f(-x)$，求\ $g(x)$。',
  '設\ $f(x)=-2x^2+3x+7$。若\ $g(x+5)=f(-x)$，求\ $g(x)$。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 40 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 40 AND language = 'Chinese'),
  '\begin{flalign*}
    g(x)&=g\left((x-5)+5\right)\\
    &=f\left(-(x-5)\right)\\
    &=f(-x+5)\\
    &=-2(-x+5)^2+3(-x+5)+7\\
    &=-2\left(x^2-10x+25\right)-3x+15+7\\
    &=-2x^2+20x-50-3x+22\\
    &=-2x^2+17x-28
\end{flalign*}',
  '\begin{flalign*}
    g(x)&=g\left((x-5)+5\right)\\
    &=f\left(-(x-5)\right)\\
    &=f(-x+5)\\
    &=-2(-x+5)^2+3(-x+5)+7\\
    &=-2\left(x^2-10x+25\right)-3x+15+7\\
    &=-2x^2+20x-50-3x+22\\
    &=-2x^2+17x-28
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 41
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  41,
  'Chinese',
  '圖中顯示了函數\ $y=f(x)$，其中\ $f(x)=kx+4$，且與\ $y$ 軸和\ $x$ 軸分別相交於\ $A$ 和\ $B$。已知\ $f(-1)=2k$。求\ $\triangle OAB$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  % Axes
  \draw[->] (-5,0) -- (2,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,5) node[above] {$y$};
  \draw[domain=-4:1, smooth, variable=\x, blue] plot ({\x}, {(4/3)*\x+4}) node [below right] {$y=f(x)$};
  \filldraw[black] (0,4) circle (2pt) node[right] {$A$};
  \filldraw[black] (-3,0) circle (2pt) node[below] {$B$};
  \filldraw[black] (0,0) circle (2pt) node[below left] {$O$};
\end{tikzpicture}}
\end{center}',
  '圖中顯示了函數\ $y=f(x)$，其中\ $f(x)=kx+4$，且與\ $y$ 軸和\ $x$ 軸分別相交於\ $A$ 和\ $B$。已知\ $f(-1)=2k$。求\ $\triangle OAB$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  % Axes
  \draw[->] (-5,0) -- (2,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,5) node[above] {$y$};
  \draw[domain=-4:1, smooth, variable=\x, blue] plot ({\x}, {(4/3)*\x+4}) node [below right] {$y=f(x)$};
  \filldraw[black] (0,4) circle (2pt) node[right] {$A$};
  \filldraw[black] (-3,0) circle (2pt) node[below] {$B$};
  \filldraw[black] (0,0) circle (2pt) node[below left] {$O$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 41 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 41 AND language = 'Chinese'),
  '\begin{flalign*}
    f(-1)&=2k\\
    k(-1)+4&=2k\\
    -k+4&=2k\\
    3k&=4\\
    k&=\frac{4}{3}
\end{flalign*}
因此，我們得到\ $\displaystyle f(x)=\frac{4}{3}x+4$。 \\
將\ $x=0$ 代入\ $y=f(x)$，我們可以得到\ $y=4$。$A$ 的座標為\ $(0,4)$。 \\
將\ $y=0$ 代入\ $y=f(x)$，我們可以得到\ $x=-3$。$B$ 的座標為\ $(-3,0)$。 \\
因此，$\triangle OAB$ 的面積\ $\displaystyle =\frac{1}{2}(4)(3)=6$ 單位平方。',
  '\begin{flalign*}
    f(-1)&=2k\\
    k(-1)+4&=2k\\
    -k+4&=2k\\
    3k&=4\\
    k&=\frac{4}{3}
\end{flalign*}
因此，我們得到\ $\displaystyle f(x)=\frac{4}{3}x+4$。 \\
將\ $x=0$ 代入\ $y=f(x)$，我們可以得到\ $y=4$。$A$ 的座標為\ $(0,4)$。 \\
將\ $y=0$ 代入\ $y=f(x)$，我們可以得到\ $x=-3$。$B$ 的座標為\ $(-3,0)$。 \\
因此，$\triangle OAB$ 的面積\ $\displaystyle =\frac{1}{2}(4)(3)=6$ 單位平方。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 42
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  42,
  'Chinese',
  '圖中顯示了函數\ $y=f(x)$，其中\ $f(x)=-2kx+10$，且與\ $y$ 軸和\ $x$ 軸分別相交於\ $A$ 和\ $B$。已知\ $f(3)=4k$。求\ $\triangle OAB$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  % Axes
  \draw[->] (-1,0) -- (7,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,7) node[above] {$y$};
  \draw[domain=-1:6, smooth, variable=\x, blue] plot ({\x/2}, {-\x+5}) node [above right] {$y=f(x)$};
  % Points A, B, and O
  \filldraw[black] (0,5) circle (2pt) node[left] {$A$};
  \filldraw[black] (2.5,0) circle (2pt) node[below left] {$B$};
  \filldraw[black] (0,0) circle (2pt) node[below left] {$O$};
\end{tikzpicture}}
\end{center}',
  '圖中顯示了函數\ $y=f(x)$，其中\ $f(x)=-2kx+10$，且與\ $y$ 軸和\ $x$ 軸分別相交於\ $A$ 和\ $B$。已知\ $f(3)=4k$。求\ $\triangle OAB$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  % Axes
  \draw[->] (-1,0) -- (7,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,7) node[above] {$y$};
  \draw[domain=-1:6, smooth, variable=\x, blue] plot ({\x/2}, {-\x+5}) node [above right] {$y=f(x)$};
  % Points A, B, and O
  \filldraw[black] (0,5) circle (2pt) node[left] {$A$};
  \filldraw[black] (2.5,0) circle (2pt) node[below left] {$B$};
  \filldraw[black] (0,0) circle (2pt) node[below left] {$O$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 42 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 42 AND language = 'Chinese'),
  '\begin{flalign*}
    f(3)&=4k\\
    -2k(3)+10&=4k\\
    -6k+10&=4k\\
    10k&=10\\
    k&=1
\end{flalign*}
因此，我們得到\ $f(x)=-2x+10$。 \\
將\ $x=0$ 代入\ $y=f(x)$，我們可以得到\ $y=10$。$A$ 的座標為\ $(0,10)$。 \\
將\ $y=0$ 代入\ $y=f(x)$，我們可以得到\ $x=5$。$B$ 的座標為\ $(5,0)$。 \\
因此，$\triangle OAB$ 的面積\ $\displaystyle =\frac{1}{2}(10)(5)=25$ 單位平方。',
  '\begin{flalign*}
    f(3)&=4k\\
    -2k(3)+10&=4k\\
    -6k+10&=4k\\
    10k&=10\\
    k&=1
\end{flalign*}
因此，我們得到\ $f(x)=-2x+10$。 \\
將\ $x=0$ 代入\ $y=f(x)$，我們可以得到\ $y=10$。$A$ 的座標為\ $(0,10)$。 \\
將\ $y=0$ 代入\ $y=f(x)$，我們可以得到\ $x=5$。$B$ 的座標為\ $(5,0)$。 \\
因此，$\triangle OAB$ 的面積\ $\displaystyle =\frac{1}{2}(10)(5)=25$ 單位平方。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 43
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  43,
  'Chinese',
  '圖中顯示了函數\ $y=f(x)$，其中\ $f(x)=kx-8$，且與\ $y$ 軸和\ $x$ 軸分別相交於\ $A$ 和\ $B$。已知\ $f(2)=k$。求\ $\triangle OAB$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  % Axes
  \draw[->] (-1,0) -- (6,0) node[right] {$x$};
  \draw[->] (0,-4.5) -- (0,1) node[above] {$y$};
  % Graph of f(x) = 8x-8 (since k=8)
  \draw[domain=-0.2:1.2, smooth, variable=\x, blue] plot ({2*\x}, {4*\x-4}) node [below right] {$y=f(x)$};
  % Points A, B, and O
  \filldraw[black] (0,-4) circle (2pt) node[left] {$A$};
  \filldraw[black] (2,0) circle (2pt) node[below right] {$B$};
  \filldraw[black] (0,0) circle (2pt) node[below left] {$O$};
\end{tikzpicture}}
\end{center}',
  '圖中顯示了函數\ $y=f(x)$，其中\ $f(x)=kx-8$，且與\ $y$ 軸和\ $x$ 軸分別相交於\ $A$ 和\ $B$。已知\ $f(2)=k$。求\ $\triangle OAB$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  % Axes
  \draw[->] (-1,0) -- (6,0) node[right] {$x$};
  \draw[->] (0,-4.5) -- (0,1) node[above] {$y$};
  % Graph of f(x) = 8x-8 (since k=8)
  \draw[domain=-0.2:1.2, smooth, variable=\x, blue] plot ({2*\x}, {4*\x-4}) node [below right] {$y=f(x)$};
  % Points A, B, and O
  \filldraw[black] (0,-4) circle (2pt) node[left] {$A$};
  \filldraw[black] (2,0) circle (2pt) node[below right] {$B$};
  \filldraw[black] (0,0) circle (2pt) node[below left] {$O$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 43 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 43 AND language = 'Chinese'),
  '\begin{flalign*}
    f(2)&=k\\
    k(2)-8&=k\\
    2k-8&=k\\
    k&=8
\end{flalign*}
因此，我們得到\ $f(x)=8x-8$。 \\
將\ $x=0$ 代入\ $y=f(x)$，我們可以得到\ $y=-8$。$A$ 的座標為\ $(0,-8)$。 \\
將\ $y=0$ 代入\ $y=f(x)$，我們可以得到\ $x=1$。$B$ 的座標為\ $(1,0)$。 \\
因此，$\triangle OAB$ 的面積\ $\displaystyle =\frac{1}{2}(8)(1)=4$ 單位平方。',
  '\begin{flalign*}
    f(2)&=k\\
    k(2)-8&=k\\
    2k-8&=k\\
    k&=8
\end{flalign*}
因此，我們得到\ $f(x)=8x-8$。 \\
將\ $x=0$ 代入\ $y=f(x)$，我們可以得到\ $y=-8$。$A$ 的座標為\ $(0,-8)$。 \\
將\ $y=0$ 代入\ $y=f(x)$，我們可以得到\ $x=1$。$B$ 的座標為\ $(1,0)$。 \\
因此，$\triangle OAB$ 的面積\ $\displaystyle =\frac{1}{2}(8)(1)=4$ 單位平方。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 44
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  44,
  'Chinese',
  '圖中顯示了函數\ $y=f(x)$，其中\ $f(x)=-kx+12$，且與\ $y$ 軸和\ $x$ 軸分別相交於\ $A$ 和\ $B$。已知\ $f(3)=k$。求\ $\triangle OAB$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  % Axes
  \draw[->] (-1,0) -- (6,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,7/1.5) node[above] {$y$};
  % Graph of f(x) = -3x+12 (since k=3)
  \draw[domain=-0.5:4.5, smooth, variable=\x, blue] plot ({\x}, {-1.5*\x/1.5+6/1.5}) node [right] {$y=f(x)$};
  % Points A, B, and O
  \filldraw[black] (0,6/1.5) circle (2pt) node[left] {$A$};
  \filldraw[black] (4,0) circle (2pt) node[below left] {$B$};
  \filldraw[black] (0,0) circle (2pt) node[below left] {$O$};
\end{tikzpicture}}
\end{center}',
  '圖中顯示了函數\ $y=f(x)$，其中\ $f(x)=-kx+12$，且與\ $y$ 軸和\ $x$ 軸分別相交於\ $A$ 和\ $B$。已知\ $f(3)=k$。求\ $\triangle OAB$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  % Axes
  \draw[->] (-1,0) -- (6,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,7/1.5) node[above] {$y$};
  % Graph of f(x) = -3x+12 (since k=3)
  \draw[domain=-0.5:4.5, smooth, variable=\x, blue] plot ({\x}, {-1.5*\x/1.5+6/1.5}) node [right] {$y=f(x)$};
  % Points A, B, and O
  \filldraw[black] (0,6/1.5) circle (2pt) node[left] {$A$};
  \filldraw[black] (4,0) circle (2pt) node[below left] {$B$};
  \filldraw[black] (0,0) circle (2pt) node[below left] {$O$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 44 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 44 AND language = 'Chinese'),
  '\begin{flalign*}
    f(3)&=k\\
    -k(3)+12&=k\\
    -3k+12&=k\\
    4k&=12\\
    k&=3
\end{flalign*}
因此，我們得到\ $f(x)=-3x+12$。 \\
將\ $x=0$ 代入\ $y=f(x)$，我們可以得到\ $y=12$。$A$ 的座標為\ $(0,12)$。 \\
將\ $y=0$ 代入\ $y=f(x)$，我們可以得到\ $x=4$。$B$ 的座標為\ $(4,0)$。 \\
因此，$\triangle OAB$ 的面積\ $\displaystyle =\frac{1}{2}(12)(4)=24$ 單位平方。',
  '\begin{flalign*}
    f(3)&=k\\
    -k(3)+12&=k\\
    -3k+12&=k\\
    4k&=12\\
    k&=3
\end{flalign*}
因此，我們得到\ $f(x)=-3x+12$。 \\
將\ $x=0$ 代入\ $y=f(x)$，我們可以得到\ $y=12$。$A$ 的座標為\ $(0,12)$。 \\
將\ $y=0$ 代入\ $y=f(x)$，我們可以得到\ $x=4$。$B$ 的座標為\ $(4,0)$。 \\
因此，$\triangle OAB$ 的面積\ $\displaystyle =\frac{1}{2}(12)(4)=24$ 單位平方。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 45
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  45,
  'Chinese',
  '圖中顯示了函數\ $y=f(x)$，其中\ $f(x)=k-2x$，且與\ $y$ 軸和\ $x$ 軸分別相交於\ $A$ 和\ $B$。已知\ $f(4)=-k$。求\ $\triangle OAB$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  % Axes
  \draw[->] (-1*2,0) -- (4*2,0) node[right] {$x$};
  \draw[->] (0,-1*2) -- (0,5/1.5*2) node[above] {$y$};
  % Graph of f(x) = 4-2x (since k=4)
  \draw[domain=-0.5:2.5, smooth, variable=\x, blue] plot ({\x*2}, {4/1.5*2-2*\x/1.5*2}) node [above right] {$y=f(x)$};
  % Points A, B, and O
  \filldraw[black] (0,4/1.5*2) circle (2pt) node[left] {$A$};
  \filldraw[black] (2*2,0) circle (2pt) node[below] {$B$};
  \filldraw[black] (0,0) circle (2pt) node[below left] {$O$};
\end{tikzpicture}}
\end{center}',
  '圖中顯示了函數\ $y=f(x)$，其中\ $f(x)=k-2x$，且與\ $y$ 軸和\ $x$ 軸分別相交於\ $A$ 和\ $B$。已知\ $f(4)=-k$。求\ $\triangle OAB$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  % Axes
  \draw[->] (-1*2,0) -- (4*2,0) node[right] {$x$};
  \draw[->] (0,-1*2) -- (0,5/1.5*2) node[above] {$y$};
  % Graph of f(x) = 4-2x (since k=4)
  \draw[domain=-0.5:2.5, smooth, variable=\x, blue] plot ({\x*2}, {4/1.5*2-2*\x/1.5*2}) node [above right] {$y=f(x)$};
  % Points A, B, and O
  \filldraw[black] (0,4/1.5*2) circle (2pt) node[left] {$A$};
  \filldraw[black] (2*2,0) circle (2pt) node[below] {$B$};
  \filldraw[black] (0,0) circle (2pt) node[below left] {$O$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 45 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 45 AND language = 'Chinese'),
  '\begin{flalign*}
    f(4)&=-k\\
    k-2(4)&=-k\\
    k-8&=-k\\
    2k&=8\\
    k&=4
\end{flalign*}
因此，我們得到\ $f(x)=4-2x$。 \\
將\ $x=0$ 代入\ $y=f(x)$，我們可以得到\ $y=4$。$A$ 的座標為\ $(0,4)$。 \\
將\ $y=0$ 代入\ $y=f(x)$，我們可以得到\ $x=2$。$B$ 的座標為\ $(2,0)$。 \\
因此，$\triangle OAB$ 的面積\ $\displaystyle =\frac{1}{2}(4)(2)=4$ 單位平方。',
  '\begin{flalign*}
    f(4)&=-k\\
    k-2(4)&=-k\\
    k-8&=-k\\
    2k&=8\\
    k&=4
\end{flalign*}
因此，我們得到\ $f(x)=4-2x$。 \\
將\ $x=0$ 代入\ $y=f(x)$，我們可以得到\ $y=4$。$A$ 的座標為\ $(0,4)$。 \\
將\ $y=0$ 代入\ $y=f(x)$，我們可以得到\ $x=2$。$B$ 的座標為\ $(2,0)$。 \\
因此，$\triangle OAB$ 的面積\ $\displaystyle =\frac{1}{2}(4)(2)=4$ 單位平方。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 46
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  46,
  'Chinese',
  '已知\ $y=a(x-5)^2+b$ 的\ $y$\ 截距為\ $2$，其頂點在\ $(5,10)$。求\ $a$ 和\ $b$ 的值。',
  '已知\ $y=a(x-5)^2+b$ 的\ $y$\ 截距為\ $2$，其頂點在\ $(5,10)$。求\ $a$ 和\ $b$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 46 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 46 AND language = 'Chinese'),
  '函數以頂點形式給出，因此\ $b=10$。 \\
代入\ $x=0$、$y=2$ 和\ $b=10$，我們可以得到
\begin{flalign*}
    2&=a(0-5)^2+10\\
    2&=25a+10\\
    25a&=-8\\
    a&=-\frac{8}{25}
\end{flalign*}
因此，我們可以得到\ $\displaystyle (a,b)=\left(-\frac{8}{25},10\right)$。',
  '函數以頂點形式給出，因此\ $b=10$。 \\
代入\ $x=0$、$y=2$ 和\ $b=10$，我們可以得到
\begin{flalign*}
    2&=a(0-5)^2+10\\
    2&=25a+10\\
    25a&=-8\\
    a&=-\frac{8}{25}
\end{flalign*}
因此，我們可以得到\ $\displaystyle (a,b)=\left(-\frac{8}{25},10\right)$。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 47
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  47,
  'Chinese',
  '已知\ $y=-3x^2+ax+b$ 的頂點在\ $\displaystyle \left(\frac{1}{2},4\right)$。求\ $a$ 和\ $b$ 的值。',
  '已知\ $y=-3x^2+ax+b$ 的頂點在\ $\displaystyle \left(\frac{1}{2},4\right)$。求\ $a$ 和\ $b$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 47 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 47 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=-3x^2+ax+b\\
    &=-3\left(x^2-\frac{a}{3}x\right)+b\\
    &=-3\left(x^2-2(x)\left(\frac{a}{6}\right)+\left(\frac{a}{6}\right)^2-\left(\frac{a}{6}\right)^2\right)+b\\
    &=-3\left(x-\frac{a}{6}\right)^2+3\left(\frac{a}{6}\right)^2+b\\
    &=-3\left(x-\frac{a}{6}\right)^2+\frac{a^2}{12}+b
\end{flalign*}
因此，我們可以得到
\begin{flalign}
    \frac{a}{6}&=\frac{1}{2} \tag{1} \\
    \frac{a^2}{12}+b&=4 \tag{2}
\end{flalign}
根據\ $(1)$，我們可以得到\ $a=3$。 \\
將\ $a=3$ 代入\ $(2)$，我們可以得到
\begin{flalign*}
    \frac{3^2}{12}+b&=4\\
    \frac{9}{12}+b&=4\\
    b&=\frac{13}{4}
\end{flalign*}
因此，我們可以得到\ $\displaystyle (a,b)=\left(3,\frac{13}{4}\right)$。',
  '\begin{flalign*}
    y&=-3x^2+ax+b\\
    &=-3\left(x^2-\frac{a}{3}x\right)+b\\
    &=-3\left(x^2-2(x)\left(\frac{a}{6}\right)+\left(\frac{a}{6}\right)^2-\left(\frac{a}{6}\right)^2\right)+b\\
    &=-3\left(x-\frac{a}{6}\right)^2+3\left(\frac{a}{6}\right)^2+b\\
    &=-3\left(x-\frac{a}{6}\right)^2+\frac{a^2}{12}+b
\end{flalign*}
因此，我們可以得到
\begin{flalign}
    \frac{a}{6}&=\frac{1}{2} \tag{1} \\
    \frac{a^2}{12}+b&=4 \tag{2}
\end{flalign}
根據\ $(1)$，我們可以得到\ $a=3$。 \\
將\ $a=3$ 代入\ $(2)$，我們可以得到
\begin{flalign*}
    \frac{3^2}{12}+b&=4\\
    \frac{9}{12}+b&=4\\
    b&=\frac{13}{4}
\end{flalign*}
因此，我們可以得到\ $\displaystyle (a,b)=\left(3,\frac{13}{4}\right)$。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 48
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  48,
  'Chinese',
  '已知\ $\displaystyle y=-\frac{1}{2}x^2+ax+b$ 的頂點在\ $(4,10)$。求\ $a$ 和\ $b$ 的值。',
  '已知\ $\displaystyle y=-\frac{1}{2}x^2+ax+b$ 的頂點在\ $(4,10)$。求\ $a$ 和\ $b$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 48 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 48 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=-\frac{1}{2}x^2+ax+b\\
    &=-\frac{1}{2}\left(x^2-2ax\right)+b\\
    &=-\frac{1}{2}\left(x^2-2(x)(a)+a^2-a^2\right)+b\\
    &=-\frac{1}{2}(x-a)^2+\frac{a^2}{2}+b
\end{flalign*}
因此，我們可以得到
\begin{flalign}
    a&=4\tag{1}\\
    \frac{a^2}{2}+b&=10 \tag{2}
\end{flalign}
將\ $(1)$ 代入\ $(2)$，我們可以得到
\begin{flalign*}
    \frac{4^2}{2}+b&=10\\
    8+b&=10\\
    b&=2
\end{flalign*}
因此，我們可以得到\ $(a,b)=(4,2)$。',
  '\begin{flalign*}
    y&=-\frac{1}{2}x^2+ax+b\\
    &=-\frac{1}{2}\left(x^2-2ax\right)+b\\
    &=-\frac{1}{2}\left(x^2-2(x)(a)+a^2-a^2\right)+b\\
    &=-\frac{1}{2}(x-a)^2+\frac{a^2}{2}+b
\end{flalign*}
因此，我們可以得到
\begin{flalign}
    a&=4\tag{1}\\
    \frac{a^2}{2}+b&=10 \tag{2}
\end{flalign}
將\ $(1)$ 代入\ $(2)$，我們可以得到
\begin{flalign*}
    \frac{4^2}{2}+b&=10\\
    8+b&=10\\
    b&=2
\end{flalign*}
因此，我們可以得到\ $(a,b)=(4,2)$。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 49
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  49,
  'Chinese',
  '已知\ $y=2x^2+ax+b$，其頂點在\ $(2,-3)$。求\ $a$ 和\ $b$ 的值。',
  '已知\ $y=2x^2+ax+b$，其頂點在\ $(2,-3)$。求\ $a$ 和\ $b$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 49 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 49 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=2x^2+ax+b\\
    &=2\left(x^2+\frac{a}{2}x\right)+b\\
    &=2\left(x^2+2(x)\left(\frac{a}{4}\right)+\left(\frac{a}{4}\right)^2-\left(\frac{a}{4}\right)^2\right)+b\\
    &=2\left(x+\frac{a}{4}\right)^2-2\left(\frac{a}{4}\right)^2+b\\
    &=2\left(x+\frac{a}{4}\right)^2-\frac{a^2}{8}+b
\end{flalign*}
因此，我們可以得到
\begin{flalign}
    -\frac{a}{4}&=2 \tag{1}\\
    -\frac{a^2}{8}+b&=-3 \tag{2}
\end{flalign}
根據\ $(1)$，我們可以得到\ $a=-8$。 \\
將\ $a=-8$ 代入\ $(2)$，我們可以得到
\begin{flalign*}
    -\frac{(-8)^2}{8}+b&=-3\\
    -8+b&=-3\\
    b&=5
\end{flalign*}
因此，我們可以得到\ $(a,b)=(-8,5)$。',
  '\begin{flalign*}
    y&=2x^2+ax+b\\
    &=2\left(x^2+\frac{a}{2}x\right)+b\\
    &=2\left(x^2+2(x)\left(\frac{a}{4}\right)+\left(\frac{a}{4}\right)^2-\left(\frac{a}{4}\right)^2\right)+b\\
    &=2\left(x+\frac{a}{4}\right)^2-2\left(\frac{a}{4}\right)^2+b\\
    &=2\left(x+\frac{a}{4}\right)^2-\frac{a^2}{8}+b
\end{flalign*}
因此，我們可以得到
\begin{flalign}
    -\frac{a}{4}&=2 \tag{1}\\
    -\frac{a^2}{8}+b&=-3 \tag{2}
\end{flalign}
根據\ $(1)$，我們可以得到\ $a=-8$。 \\
將\ $a=-8$ 代入\ $(2)$，我們可以得到
\begin{flalign*}
    -\frac{(-8)^2}{8}+b&=-3\\
    -8+b&=-3\\
    b&=5
\end{flalign*}
因此，我們可以得到\ $(a,b)=(-8,5)$。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 50
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  50,
  'Chinese',
  '已知\ $y=ax^2-3x+b$ 的頂點在\ $\displaystyle \left(-\frac{1}{2},\frac{27}{4}\right)$。求\ $a$ 和\ $b$ 的值。',
  '已知\ $y=ax^2-3x+b$ 的頂點在\ $\displaystyle \left(-\frac{1}{2},\frac{27}{4}\right)$。求\ $a$ 和\ $b$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 50 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 50 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=ax^2-3x+b\\
    &=a\left(x^2-\frac{3}{a}x\right)+b\\
    &=a\left(x^2-2(x)\frac{3}{2a}+\left(\frac{3}{2a}\right)^2-\left(\frac{3}{2a}\right)^2\right)+b\\
    &=a\left(x-\frac{3}{2a}\right)^2-a\left(\frac{3}{2a}\right)^2+b\\
    &=a\left(x-\frac{3}{2a}\right)^2-\frac{9}{4a}+b
\end{flalign*}
因此，我們可以得到
\begin{flalign}
    \frac{3}{2a}&=-\frac{1}{2} \tag{1} \\
    -\frac{9}{4a}+b&=\frac{27}{4} \tag{2}
\end{flalign}
根據\ $(1)$，我們可以得到\ $a=-3$。 \\
將\ $a=-3$ 代入\ $(2)$，我們可以得到
\begin{flalign*}
    -\frac{9}{4(-3)}+b&=\frac{27}{4}\\
    \frac{3}{4}+b&=\frac{27}{4}\\
    b&=6
\end{flalign*}
因此，我們可以得到\ $(a,b)=(-3,6)$。',
  '\begin{flalign*}
    y&=ax^2-3x+b\\
    &=a\left(x^2-\frac{3}{a}x\right)+b\\
    &=a\left(x^2-2(x)\frac{3}{2a}+\left(\frac{3}{2a}\right)^2-\left(\frac{3}{2a}\right)^2\right)+b\\
    &=a\left(x-\frac{3}{2a}\right)^2-a\left(\frac{3}{2a}\right)^2+b\\
    &=a\left(x-\frac{3}{2a}\right)^2-\frac{9}{4a}+b
\end{flalign*}
因此，我們可以得到
\begin{flalign}
    \frac{3}{2a}&=-\frac{1}{2} \tag{1} \\
    -\frac{9}{4a}+b&=\frac{27}{4} \tag{2}
\end{flalign}
根據\ $(1)$，我們可以得到\ $a=-3$。 \\
將\ $a=-3$ 代入\ $(2)$，我們可以得到
\begin{flalign*}
    -\frac{9}{4(-3)}+b&=\frac{27}{4}\\
    \frac{3}{4}+b&=\frac{27}{4}\\
    b&=6
\end{flalign*}
因此，我們可以得到\ $(a,b)=(-3,6)$。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 51
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  51,
  'Chinese',
  '對於二次函數\ $\displaystyle y=-\frac{1}{3}x^2+x-2$，求其頂點座標和對稱軸。',
  '對於二次函數\ $\displaystyle y=-\frac{1}{3}x^2+x-2$，求其頂點座標和對稱軸。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 51 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 51 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=-\frac{1}{3}x^2+x-2\\
    &=-\frac{1}{3}\left(x^2-3x\right)-2\\
    &=-\frac{1}{3}\left(x^2-2(x)\left(\frac{3}{2}\right)+\left(\frac{3}{2}\right)^2-\left(\frac{3}{2}\right)^2\right)-2\\
    &=-\frac{1}{3}\left(x-\frac{3}{2}\right)^2+\frac{1}{3}\left(\frac{3}{2}\right)^2-2\\
    &=-\frac{1}{3}\left(x-\frac{3}{2}\right)^2+\frac{3}{4}-2\\
    &=-\frac{1}{3}\left(x-\frac{3}{2}\right)^2-\frac{5}{4}
\end{flalign*}
因此，頂點的座標為\ $\displaystyle \left(\frac{3}{2},-\frac{5}{4}\right)$，對稱軸為\ $\displaystyle x=\frac{3}{2}$。',
  '\begin{flalign*}
    y&=-\frac{1}{3}x^2+x-2\\
    &=-\frac{1}{3}\left(x^2-3x\right)-2\\
    &=-\frac{1}{3}\left(x^2-2(x)\left(\frac{3}{2}\right)+\left(\frac{3}{2}\right)^2-\left(\frac{3}{2}\right)^2\right)-2\\
    &=-\frac{1}{3}\left(x-\frac{3}{2}\right)^2+\frac{1}{3}\left(\frac{3}{2}\right)^2-2\\
    &=-\frac{1}{3}\left(x-\frac{3}{2}\right)^2+\frac{3}{4}-2\\
    &=-\frac{1}{3}\left(x-\frac{3}{2}\right)^2-\frac{5}{4}
\end{flalign*}
因此，頂點的座標為\ $\displaystyle \left(\frac{3}{2},-\frac{5}{4}\right)$，對稱軸為\ $\displaystyle x=\frac{3}{2}$。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 52
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  52,
  'Chinese',
  '對於二次函數\ $y=(x+1)(x-2)+7$，求其頂點座標和對稱軸。',
  '對於二次函數\ $y=(x+1)(x-2)+7$，求其頂點座標和對稱軸。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 52 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 52 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=(x+1)(x-2)+7\\
    &=x^2-x-2+7\\
    &=x^2-x+5\\
    &=x^2-2(x)\left(\frac{1}{2}\right)+\left(\frac{1}{2}\right)^2-\left(\frac{1}{2}\right)^2+5\\
    &=\left(x-\frac{1}{2}\right)^2-\frac{1}{4}+5\\
    &=\left(x-\frac{1}{2}\right)^2+\frac{19}{4}
\end{flalign*}
因此，頂點的座標為\ $\displaystyle \left(\frac{1}{2},\frac{19}{4}\right)$，對稱軸為\ $\displaystyle x=\frac{1}{2}$。',
  '\begin{flalign*}
    y&=(x+1)(x-2)+7\\
    &=x^2-x-2+7\\
    &=x^2-x+5\\
    &=x^2-2(x)\left(\frac{1}{2}\right)+\left(\frac{1}{2}\right)^2-\left(\frac{1}{2}\right)^2+5\\
    &=\left(x-\frac{1}{2}\right)^2-\frac{1}{4}+5\\
    &=\left(x-\frac{1}{2}\right)^2+\frac{19}{4}
\end{flalign*}
因此，頂點的座標為\ $\displaystyle \left(\frac{1}{2},\frac{19}{4}\right)$，對稱軸為\ $\displaystyle x=\frac{1}{2}$。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 53
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  53,
  'Chinese',
  '對於二次函數\ $y=-x(x+3)-5$，求其頂點座標和對稱軸。',
  '對於二次函數\ $y=-x(x+3)-5$，求其頂點座標和對稱軸。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 53 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 53 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=-x(x+3)-5\\
    &=-x^2-3x-5\\
    &=-\left(x^2+3x\right)-5\\
    &=-\left(x^2+2(x)\left(\frac{3}{2}\right)+\left(\frac{3}{2}\right)^2-\left(\frac{3}{2}\right)^2\right)-5\\
    &=-\left(x+\frac{3}{2}\right)^2+\left(\frac{3}{2}\right)^2-5\\
    &=-\left(x+\frac{3}{2}\right)^2+\frac{9}{4}-5\\
    &=-\left(x+\frac{3}{2}\right)^2-\frac{11}{4}
\end{flalign*}
因此，頂點的座標為\ $\displaystyle \left(-\frac{3}{2},-\frac{11}{4}\right)$，對稱軸為\ $\displaystyle x=-\frac{3}{2}$。',
  '\begin{flalign*}
    y&=-x(x+3)-5\\
    &=-x^2-3x-5\\
    &=-\left(x^2+3x\right)-5\\
    &=-\left(x^2+2(x)\left(\frac{3}{2}\right)+\left(\frac{3}{2}\right)^2-\left(\frac{3}{2}\right)^2\right)-5\\
    &=-\left(x+\frac{3}{2}\right)^2+\left(\frac{3}{2}\right)^2-5\\
    &=-\left(x+\frac{3}{2}\right)^2+\frac{9}{4}-5\\
    &=-\left(x+\frac{3}{2}\right)^2-\frac{11}{4}
\end{flalign*}
因此，頂點的座標為\ $\displaystyle \left(-\frac{3}{2},-\frac{11}{4}\right)$，對稱軸為\ $\displaystyle x=-\frac{3}{2}$。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 54
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  54,
  'Chinese',
  '對於二次函數\ $y=(x+4)^2+(x-3)^2$，求其頂點座標和對稱軸。',
  '對於二次函數\ $y=(x+4)^2+(x-3)^2$，求其頂點座標和對稱軸。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 54 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 54 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=(x+4)^2+(x-3)^2\\
    &=x^2+8x+16+x^2-6x+9\\
    &=2x^2+2x+25\\
    &=2\left(x^2+x\right)+25\\
    &=2\left(x^2+2(x)\left(\frac{1}{2}\right)+\left(\frac{1}{2}\right)^2-\left(\frac{1}{2}\right)^2\right)+25\\
    &=2\left(x+\frac{1}{2}\right)^2-2\left(\frac{1}{2}\right)^2+25\\
    &=2\left(x+\frac{1}{2}\right)^2-\frac{1}{2}+25\\
    &=2\left(x+\frac{1}{2}\right)^2+\frac{49}{2}
\end{flalign*}
因此，頂點的座標為\ $\displaystyle \left(-\frac{1}{2},\frac{49}{2}\right)$，對稱軸為\ $\displaystyle x=-\frac{1}{2}$。',
  '\begin{flalign*}
    y&=(x+4)^2+(x-3)^2\\
    &=x^2+8x+16+x^2-6x+9\\
    &=2x^2+2x+25\\
    &=2\left(x^2+x\right)+25\\
    &=2\left(x^2+2(x)\left(\frac{1}{2}\right)+\left(\frac{1}{2}\right)^2-\left(\frac{1}{2}\right)^2\right)+25\\
    &=2\left(x+\frac{1}{2}\right)^2-2\left(\frac{1}{2}\right)^2+25\\
    &=2\left(x+\frac{1}{2}\right)^2-\frac{1}{2}+25\\
    &=2\left(x+\frac{1}{2}\right)^2+\frac{49}{2}
\end{flalign*}
因此，頂點的座標為\ $\displaystyle \left(-\frac{1}{2},\frac{49}{2}\right)$，對稱軸為\ $\displaystyle x=-\frac{1}{2}$。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 55
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  55,
  'Chinese',
  '對於二次函數\ $y=2x^2+3x-4$，求其頂點座標和對稱軸。',
  '對於二次函數\ $y=2x^2+3x-4$，求其頂點座標和對稱軸。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 55 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 55 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=2x^2+3x-4\\
    &=2\left(x^2+\frac{3}{2}x\right)-4\\
    &=2\left(x^2+2(x)\left(\frac{3}{4}\right)+\left(\frac{3}{4}\right)^2-\left(\frac{3}{4}\right)^2\right)-4\\
    &=2\left(x+\frac{3}{4}\right)^2-2\left(\frac{3}{4}\right)^2-4\\
    &=2\left(x+\frac{3}{4}\right)^2-\frac{9}{8}-4\\
    &=2\left(x+\frac{3}{4}\right)^2-\frac{41}{8}
\end{flalign*}
因此，頂點的座標為\ $\displaystyle \left(-\frac{3}{4},-\frac{41}{8}\right)$，對稱軸為\ $\displaystyle x=-\frac{3}{4}$。',
  '\begin{flalign*}
    y&=2x^2+3x-4\\
    &=2\left(x^2+\frac{3}{2}x\right)-4\\
    &=2\left(x^2+2(x)\left(\frac{3}{4}\right)+\left(\frac{3}{4}\right)^2-\left(\frac{3}{4}\right)^2\right)-4\\
    &=2\left(x+\frac{3}{4}\right)^2-2\left(\frac{3}{4}\right)^2-4\\
    &=2\left(x+\frac{3}{4}\right)^2-\frac{9}{8}-4\\
    &=2\left(x+\frac{3}{4}\right)^2-\frac{41}{8}
\end{flalign*}
因此，頂點的座標為\ $\displaystyle \left(-\frac{3}{4},-\frac{41}{8}\right)$，對稱軸為\ $\displaystyle x=-\frac{3}{4}$。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 56
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  56,
  'Chinese',
  '對於二次函數\ $\displaystyle y=-\frac{1}{2}x^2-x+3$，求其最優值並說明該值是最大值還是最小值。',
  '對於二次函數\ $\displaystyle y=-\frac{1}{2}x^2-x+3$，求其最優值並說明該值是最大值還是最小值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 56 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 56 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=-\frac{1}{2}x^2-x+3\\
    &=-\frac{1}{2}\left(x^2+2x\right)+3\\
    &=-\frac{1}{2}\left(x^2+2(x)(1)+1^2-1^2\right)+3\\
    &=-\frac{1}{2}(x+1)^2+\frac{1}{2}+3\\
    &=-\frac{1}{2}(x+1)^2+\frac{7}{2}
\end{flalign*}
因此，最優值為\ $\displaystyle \frac{7}{2}$，且由於二次函數開口向下，所以該值為最大值。',
  '\begin{flalign*}
    y&=-\frac{1}{2}x^2-x+3\\
    &=-\frac{1}{2}\left(x^2+2x\right)+3\\
    &=-\frac{1}{2}\left(x^2+2(x)(1)+1^2-1^2\right)+3\\
    &=-\frac{1}{2}(x+1)^2+\frac{1}{2}+3\\
    &=-\frac{1}{2}(x+1)^2+\frac{7}{2}
\end{flalign*}
因此，最優值為\ $\displaystyle \frac{7}{2}$，且由於二次函數開口向下，所以該值為最大值。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 57
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  57,
  'Chinese',
  '對於二次函數 $ y=x(x+3)-7$，求其最優值並說明該值是最大值還是最小值。',
  '對於二次函數 $ y=x(x+3)-7$，求其最優值並說明該值是最大值還是最小值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 57 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 57 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=x(x+3)-7\\
    &=x^2+3x-7\\
    &=x^2+2(x)\left(\frac{3}{2}\right)+\left(\frac{3}{2}\right)^2-\left(\frac{3}{2}\right)^2-7\\
    &=\left(x+\frac{3}{2}\right)^2-\frac{9}{4}-7\\
    &=\left(x+\frac{3}{2}\right)^2-\frac{37}{4}
\end{flalign*}
因此，最優值為\ $\displaystyle -\frac{37}{4}$，且由於二次函數開口向上，所以該值為最小值。',
  '\begin{flalign*}
    y&=x(x+3)-7\\
    &=x^2+3x-7\\
    &=x^2+2(x)\left(\frac{3}{2}\right)+\left(\frac{3}{2}\right)^2-\left(\frac{3}{2}\right)^2-7\\
    &=\left(x+\frac{3}{2}\right)^2-\frac{9}{4}-7\\
    &=\left(x+\frac{3}{2}\right)^2-\frac{37}{4}
\end{flalign*}
因此，最優值為\ $\displaystyle -\frac{37}{4}$，且由於二次函數開口向上，所以該值為最小值。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 58
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  58,
  'Chinese',
  '對於二次函數\ $ y=(x+3)(2-x)+5x-3$，求其最優值並說明該值是最大值還是最小值。',
  '對於二次函數\ $ y=(x+3)(2-x)+5x-3$，求其最優值並說明該值是最大值還是最小值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 58 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 58 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=(x+3)(2-x)+5x-3\\
    &=-x^2-x+6+5x-3\\
    &=-x^2+4x+3\\
    &=-\left(x^2-4x\right)+3\\
    &=-\left(x^2-2(x)(2)+2^2-2^2\right)+3\\
    &=-(x-2)^2+2^2+3\\
    &=-(x-2)^2+7
\end{flalign*}
因此，最優值為\ $7$，且由於二次函數開口向下，所以該值為最大值。',
  '\begin{flalign*}
    y&=(x+3)(2-x)+5x-3\\
    &=-x^2-x+6+5x-3\\
    &=-x^2+4x+3\\
    &=-\left(x^2-4x\right)+3\\
    &=-\left(x^2-2(x)(2)+2^2-2^2\right)+3\\
    &=-(x-2)^2+2^2+3\\
    &=-(x-2)^2+7
\end{flalign*}
因此，最優值為\ $7$，且由於二次函數開口向下，所以該值為最大值。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 59
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  59,
  'Chinese',
  '對於二次函數\ $y=(x+2)^2+(x+8)^2$，求其最優值並說明該值是最大值還是最小值。',
  '對於二次函數\ $y=(x+2)^2+(x+8)^2$，求其最優值並說明該值是最大值還是最小值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 59 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 59 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=(x+2)^2+(x+8)^2\\
    &=x^2+4x+4+x^2+16x+64\\
    &=2x^2+20x+68\\
    &=2\left(x^2+10x\right)+68\\
    &=2\left(x^2+2(x)(5)+5^2-5^2\right)+68\\
    &=2(x+5)^2-2\left(5^2\right)+68\\
    &=2(x+5)^2-50+68\\
    &=2(x+5)^2+18
\end{flalign*}
因此，最優值為\ $18$，且由於二次函數開口向上，所以該值為最小值。',
  '\begin{flalign*}
    y&=(x+2)^2+(x+8)^2\\
    &=x^2+4x+4+x^2+16x+64\\
    &=2x^2+20x+68\\
    &=2\left(x^2+10x\right)+68\\
    &=2\left(x^2+2(x)(5)+5^2-5^2\right)+68\\
    &=2(x+5)^2-2\left(5^2\right)+68\\
    &=2(x+5)^2-50+68\\
    &=2(x+5)^2+18
\end{flalign*}
因此，最優值為\ $18$，且由於二次函數開口向上，所以該值為最小值。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 60
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  60,
  'Chinese',
  '對於二次函數\ $y=-3x^2+4x-5$，求其最優值並說明該值是最大值還是最小值。',
  '對於二次函數\ $y=-3x^2+4x-5$，求其最優值並說明該值是最大值還是最小值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 60 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 60 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=-3x^2+4x-5\\
    &=-3\left(x^2-\frac{4}{3}x\right)-5\\
    &=-3\left(x^2-2(x)\left(\frac{2}{3}\right)+\left(\frac{2}{3}\right)^2-\left(\frac{2}{3}\right)^2\right)-5\\
    &=-3\left(x-\frac{2}{3}\right)^2+3\left(\frac{2}{3}\right)^2-5\\
    &=-3\left(x-\frac{2}{3}\right)^2+\frac{4}{3}-5\\
    &=-3\left(x-\frac{2}{3}\right)^2+\frac{11}{3}
\end{flalign*}
因此，最優值為\ $\displaystyle -\frac{11}{3}$，且由於二次函數開口向下，所以該值為最大值。',
  '\begin{flalign*}
    y&=-3x^2+4x-5\\
    &=-3\left(x^2-\frac{4}{3}x\right)-5\\
    &=-3\left(x^2-2(x)\left(\frac{2}{3}\right)+\left(\frac{2}{3}\right)^2-\left(\frac{2}{3}\right)^2\right)-5\\
    &=-3\left(x-\frac{2}{3}\right)^2+3\left(\frac{2}{3}\right)^2-5\\
    &=-3\left(x-\frac{2}{3}\right)^2+\frac{4}{3}-5\\
    &=-3\left(x-\frac{2}{3}\right)^2+\frac{11}{3}
\end{flalign*}
因此，最優值為\ $\displaystyle -\frac{11}{3}$，且由於二次函數開口向下，所以該值為最大值。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 61
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  61,
  'Chinese',
  '已知函數\ $y=(x+3)(x+k)-k$ 的\ $y$ 截距為\ $6$。求\ $k$ 的值。',
  '已知函數\ $y=(x+3)(x+k)-k$ 的\ $y$ 截距為\ $6$。求\ $k$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 61 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 61 AND language = 'Chinese'),
  '將\ $x=0$ 和\ $y=6$ 代入函數，我們可以得到
\begin{flalign*}
    6&=(0+3)(0+k)-k\\
    6&=3k-k\\
    2k&=6\\
    k&=3
\end{flalign*}',
  '將\ $x=0$ 和\ $y=6$ 代入函數，我們可以得到
\begin{flalign*}
    6&=(0+3)(0+k)-k\\
    6&=3k-k\\
    2k&=6\\
    k&=3
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 62
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  62,
  'Chinese',
  '已知函數\ $y=(x-2)(x+a)+4a$ 的\ $y$ 截距為\ $-10$。求\ $a$ 的值。',
  '已知函數\ $y=(x-2)(x+a)+4a$ 的\ $y$ 截距為\ $-10$。求\ $a$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 62 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 62 AND language = 'Chinese'),
  '將\ $x=0$ 和\ $y=-10$ 代入函數，我們可以得到
\begin{flalign*}
    -10&=(0-2)(0+a)+4a\\
    -10&=-2a+4a\\
    2a&=-10\\
    a&=-5
\end{flalign*}',
  '將\ $x=0$ 和\ $y=-10$ 代入函數，我們可以得到
\begin{flalign*}
    -10&=(0-2)(0+a)+4a\\
    -10&=-2a+4a\\
    2a&=-10\\
    a&=-5
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 63
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  63,
  'Chinese',
  '已知函數\ $y=(x+1)(x+b)+b$ 的\ $y$ 截距為\ $8$。求\ $b$ 的值。',
  '已知函數\ $y=(x+1)(x+b)+b$ 的\ $y$ 截距為\ $8$。求\ $b$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 63 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 63 AND language = 'Chinese'),
  '將\ $x=0$ 和\ $y=8$ 代入函數，我們可以得到
\begin{flalign*}
    8&=(0+1)(0+b)+b\\
    8&=b+b\\
    2b&=8\\
    b&=4
\end{flalign*}',
  '將\ $x=0$ 和\ $y=8$ 代入函數，我們可以得到
\begin{flalign*}
    8&=(0+1)(0+b)+b\\
    8&=b+b\\
    2b&=8\\
    b&=4
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 64
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  64,
  'Chinese',
  '已知函數\ $y=(x+5)(x+c)-4c$ 的\ $y$ 截距為\ $7$。求\ $c$ 的值。',
  '已知函數\ $y=(x+5)(x+c)-4c$ 的\ $y$ 截距為\ $7$。求\ $c$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 64 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 64 AND language = 'Chinese'),
  '將\ $x=0$ 和\ $y=7$ 代入函數，我們可以得到
\begin{flalign*}
    7&=(0+5)(0+c)-4c\\
    7&=5c-4c\\
    c&=7
\end{flalign*}',
  '將\ $x=0$ 和\ $y=7$ 代入函數，我們可以得到
\begin{flalign*}
    7&=(0+5)(0+c)-4c\\
    7&=5c-4c\\
    c&=7
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 65
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  65,
  'Chinese',
  '已知函數\ $y=(x+6)(x+m)+2m$ 的\ $y$ 截距為\ $16$。求\ $m$ 的值。',
  '已知函數\ $y=(x+6)(x+m)+2m$ 的\ $y$ 截距為\ $16$。求\ $m$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 65 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 65 AND language = 'Chinese'),
  '將\ $x=0$ 和\ $y=16$ 代入函數，我們可以得到
\begin{flalign*}
    16&=(0+6)(0+m)+2m\\
    16&=6m+2m\\
    8m&=16\\
    m&=2
\end{flalign*}',
  '將\ $x=0$ 和\ $y=16$ 代入函數，我們可以得到
\begin{flalign*}
    16&=(0+6)(0+m)+2m\\
    16&=6m+2m\\
    8m&=16\\
    m&=2
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 66
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  66,
  'Chinese',
  '已知函數\ $y=(x+1)(4-3x)+2x-k$ 有一個最優值\ $5$。求\ $k$ 的值。',
  '已知函數\ $y=(x+1)(4-3x)+2x-k$ 有一個最優值\ $5$。求\ $k$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 66 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 66 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=(x+1)(4-3x)+2x-k\\
    &=-3x^2+x+4+2x-k\\
    &=-3x^2+3x+4-k\\
    &=-3\left(x^2-x\right)+4-k\\
    &=-3\left(x^2-2(x)\left(\frac{1}{2}\right)+\left(\frac{1}{2}\right)^2-\left(\frac{1}{2}\right)^2\right)+4-k\\
    &=-3\left(x-\frac{1}{2}\right)^2+3\left(\frac{1}{2}\right)^2+4-k\\
    &=-3\left(x-\frac{1}{2}\right)^2+\frac{3}{4}+4-k\\
    &=-3\left(x-\frac{1}{2}\right)^2+\frac{19}{4}-k
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    \frac{19}{4}-k&=5\\
    k&=-\frac{1}{4}
\end{flalign*}',
  '\begin{flalign*}
    y&=(x+1)(4-3x)+2x-k\\
    &=-3x^2+x+4+2x-k\\
    &=-3x^2+3x+4-k\\
    &=-3\left(x^2-x\right)+4-k\\
    &=-3\left(x^2-2(x)\left(\frac{1}{2}\right)+\left(\frac{1}{2}\right)^2-\left(\frac{1}{2}\right)^2\right)+4-k\\
    &=-3\left(x-\frac{1}{2}\right)^2+3\left(\frac{1}{2}\right)^2+4-k\\
    &=-3\left(x-\frac{1}{2}\right)^2+\frac{3}{4}+4-k\\
    &=-3\left(x-\frac{1}{2}\right)^2+\frac{19}{4}-k
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    \frac{19}{4}-k&=5\\
    k&=-\frac{1}{4}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 67
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  67,
  'Chinese',
  '已知函數\ $y=(3x+1)(6-5x)+2x-a$ 有一個最優值\ $7$。求\ $a$ 的值。',
  '已知函數\ $y=(3x+1)(6-5x)+2x-a$ 有一個最優值\ $7$。求\ $a$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 67 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 67 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=(3x+1)(6-5x)+2x-a\\
    &=-15x^2+13x+6+2x-a\\
    &=-15x^2+15x+6-a\\
    &=-15\left(x^2-x\right)+6-a\\
    &=-15\left(x^2-2(x)\left(\frac{1}{2}\right)+\left(\frac{1}{2}\right)^2-\left(\frac{1}{2}\right)^2\right)+6-a\\
    &=-15\left(x-\frac{1}{2}\right)^2+15\left(\frac{1}{2}\right)^2+6-a\\
    &=-15\left(x-\frac{1}{2}\right)^2+\frac{15}{4}+6-a\\
    &=-15\left(x-\frac{1}{2}\right)^2+\frac{39}{4}-a
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    \frac{39}{4}-a&=7\\
    a&=\frac{11}{4}
\end{flalign*}',
  '\begin{flalign*}
    y&=(3x+1)(6-5x)+2x-a\\
    &=-15x^2+13x+6+2x-a\\
    &=-15x^2+15x+6-a\\
    &=-15\left(x^2-x\right)+6-a\\
    &=-15\left(x^2-2(x)\left(\frac{1}{2}\right)+\left(\frac{1}{2}\right)^2-\left(\frac{1}{2}\right)^2\right)+6-a\\
    &=-15\left(x-\frac{1}{2}\right)^2+15\left(\frac{1}{2}\right)^2+6-a\\
    &=-15\left(x-\frac{1}{2}\right)^2+\frac{15}{4}+6-a\\
    &=-15\left(x-\frac{1}{2}\right)^2+\frac{39}{4}-a
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    \frac{39}{4}-a&=7\\
    a&=\frac{11}{4}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 68
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  68,
  'Chinese',
  '已知函數\ $y=(x-4)(2x+5)+3x-b$ 有一個最優值\ $20$。求\ $b$ 的值。',
  '已知函數\ $y=(x-4)(2x+5)+3x-b$ 有一個最優值\ $20$。求\ $b$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 68 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 68 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=(x-4)(2x+5)+3x-b\\
    &=2x^2-3x-20+3x-b\\
    &=2x^2-20-b
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    -20-b&=20\\
    b&=-40
\end{flalign*}',
  '\begin{flalign*}
    y&=(x-4)(2x+5)+3x-b\\
    &=2x^2-3x-20+3x-b\\
    &=2x^2-20-b
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    -20-b&=20\\
    b&=-40
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 69
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  69,
  'Chinese',
  '已知函數\ $y=(3x-2)(4-2x)+2x-c$ 有一個最優值\ $6$。求\ $c$ 的值。',
  '已知函數\ $y=(3x-2)(4-2x)+2x-c$ 有一個最優值\ $6$。求\ $c$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 69 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 69 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=(3x-2)(4-2x)+2x-c\\
    &=-6x^2+16x-8+2x-c\\
    &=-6x^2+18x-8-c\\
    &=-6\left(x^2-3x\right)-8-c\\
    &=-6\left(x^2-2(x)\left(\frac{3}{2}\right)+\left(\frac{3}{2}\right)^2-\left(\frac{3}{2}\right)^2\right)-8-c\\
    &=-6\left(x-\frac{3}{2}\right)^2+6\left(\frac{3}{2}\right)^2-8-c\\
    &=-6\left(x-\frac{3}{2}\right)^2+\frac{27}{2}-8-c\\
    &=-6\left(x-\frac{3}{2}\right)^2+\frac{11}{2}-c
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    \frac{11}{2}-c&=6\\
    c&=-\frac{1}{2}
\end{flalign*}',
  '\begin{flalign*}
    y&=(3x-2)(4-2x)+2x-c\\
    &=-6x^2+16x-8+2x-c\\
    &=-6x^2+18x-8-c\\
    &=-6\left(x^2-3x\right)-8-c\\
    &=-6\left(x^2-2(x)\left(\frac{3}{2}\right)+\left(\frac{3}{2}\right)^2-\left(\frac{3}{2}\right)^2\right)-8-c\\
    &=-6\left(x-\frac{3}{2}\right)^2+6\left(\frac{3}{2}\right)^2-8-c\\
    &=-6\left(x-\frac{3}{2}\right)^2+\frac{27}{2}-8-c\\
    &=-6\left(x-\frac{3}{2}\right)^2+\frac{11}{2}-c
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    \frac{11}{2}-c&=6\\
    c&=-\frac{1}{2}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 70
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  70,
  'Chinese',
  '已知函數\ $y=(5x-4)(2-x)+x-m$ 有一個最優值\ $0$。求\ $m$ 的值。',
  '已知函數\ $y=(5x-4)(2-x)+x-m$ 有一個最優值\ $0$。求\ $m$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 70 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 70 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=(5x-4)(2-x)+x-m\\
    &=-5x^2+14x-8+x-m\\
    &=-5x^2+15x-8-m\\
    &=-5(x^2-3x)-8-m\\
    &=-5\left(x^2-2(x)\left(\frac{3}{2}\right)+\left(\frac{3}{2}\right)^2-\left(\frac{3}{2}\right)^2\right)-8-m\\
    &=-5\left(x-\frac{3}{2}\right)^2+5\left(\frac{3}{2}\right)^2-8-m\\
    &=-5\left(x-\frac{3}{2}\right)^2+\frac{45}{4}-8-m\\
    &=-5\left(x-\frac{3}{2}\right)^2+\frac{13}{4}-m
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    \frac{13}{4}-m&=0\\
    m&=\frac{13}{4}
\end{flalign*}',
  '\begin{flalign*}
    y&=(5x-4)(2-x)+x-m\\
    &=-5x^2+14x-8+x-m\\
    &=-5x^2+15x-8-m\\
    &=-5(x^2-3x)-8-m\\
    &=-5\left(x^2-2(x)\left(\frac{3}{2}\right)+\left(\frac{3}{2}\right)^2-\left(\frac{3}{2}\right)^2\right)-8-m\\
    &=-5\left(x-\frac{3}{2}\right)^2+5\left(\frac{3}{2}\right)^2-8-m\\
    &=-5\left(x-\frac{3}{2}\right)^2+\frac{45}{4}-8-m\\
    &=-5\left(x-\frac{3}{2}\right)^2+\frac{13}{4}-m
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    \frac{13}{4}-m&=0\\
    m&=\frac{13}{4}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 71
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  71,
  'Chinese',
  '已知函數\ $y=x^2-kx+5$ 的對稱軸是\ $x=3$。求\ $k$ 的值。',
  '已知函數\ $y=x^2-kx+5$ 的對稱軸是\ $x=3$。求\ $k$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 71 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 71 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=x^2-kx+5\\
    &=x^2-2(x)\left(\frac{k}{2}\right)+\left(\frac{k}{2}\right)^2-\left(\frac{k}{2}\right)^2+5\\
    &=\left(x-\frac{k}{2}\right)^2-\left(\frac{k}{2}\right)^2+5
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    \frac{k}{2}&=3\\
    k&=6
\end{flalign*}',
  '\begin{flalign*}
    y&=x^2-kx+5\\
    &=x^2-2(x)\left(\frac{k}{2}\right)+\left(\frac{k}{2}\right)^2-\left(\frac{k}{2}\right)^2+5\\
    &=\left(x-\frac{k}{2}\right)^2-\left(\frac{k}{2}\right)^2+5
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    \frac{k}{2}&=3\\
    k&=6
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 72
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  72,
  'Chinese',
  '已知函數\ $y=5x^2-ax-3$ 的對稱軸為\ $\displaystyle x=\frac{1}{2}$。求\ $a$\ 的值。',
  '已知函數\ $y=5x^2-ax-3$ 的對稱軸為\ $\displaystyle x=\frac{1}{2}$。求\ $a$\ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 72 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 72 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=5x^2-ax-3\\
    &=5\left(x^2-\frac{a}{5}x\right)-3\\
    &=5\left(x^2-2(x)\left(\frac{a}{10}\right)+\left(\frac{a}{10}\right)^2-\left(\frac{a}{10}\right)^2\right)-3\\
    &=5\left(x-\frac{a}{10}\right)^2-5\left(\frac{a}{10}\right)^2-3
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    \frac{a}{10}&=\frac{1}{2}\\
    a&=5
\end{flalign*}',
  '\begin{flalign*}
    y&=5x^2-ax-3\\
    &=5\left(x^2-\frac{a}{5}x\right)-3\\
    &=5\left(x^2-2(x)\left(\frac{a}{10}\right)+\left(\frac{a}{10}\right)^2-\left(\frac{a}{10}\right)^2\right)-3\\
    &=5\left(x-\frac{a}{10}\right)^2-5\left(\frac{a}{10}\right)^2-3
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    \frac{a}{10}&=\frac{1}{2}\\
    a&=5
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 73
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  73,
  'Chinese',
  '已知函數\ $y=-x^2-bx+7$ 的對稱軸是\ $x=-3$。求\ $b$ 的值。',
  '已知函數\ $y=-x^2-bx+7$ 的對稱軸是\ $x=-3$。求\ $b$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 73 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 73 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=-x^2-bx+7\\
    &=-\left(x^2+bx\right)+7\\
    &=-\left(x^2+2(x)\left(\frac{b}{2}\right)+\left(\frac{b}{2}\right)^2-\left(\frac{b}{2}\right)^2\right)+7\\
    &=-\left(x^2+\frac{b}{2}\right)^2+\left(\frac{b}{2}\right)^2+7
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    -\frac{b}{2}&=-3\\
    b&=6
\end{flalign*}',
  '\begin{flalign*}
    y&=-x^2-bx+7\\
    &=-\left(x^2+bx\right)+7\\
    &=-\left(x^2+2(x)\left(\frac{b}{2}\right)+\left(\frac{b}{2}\right)^2-\left(\frac{b}{2}\right)^2\right)+7\\
    &=-\left(x^2+\frac{b}{2}\right)^2+\left(\frac{b}{2}\right)^2+7
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    -\frac{b}{2}&=-3\\
    b&=6
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 74
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  74,
  'Chinese',
  '已知函數\ $y=-3x^2-cx+9$ 的對稱軸是\ $x=2$。求\ $c$ 的值。',
  '已知函數\ $y=-3x^2-cx+9$ 的對稱軸是\ $x=2$。求\ $c$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 74 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 74 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=-3x^2-cx+9\\
    &=-3\left(x^2+\frac{c}{3}x\right)+9\\
    &=-3\left(x^2+2(x)\left(\frac{c}{6}\right)+\left(\frac{c}{6}\right)^2-\left(\frac{c}{6}\right)^2\right)+9\\
    &=-3\left(x+\frac{c}{6}\right)^2+3\left(\frac{c}{6}\right)^2+9
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    -\frac{c}{6}&=2\\
    c&=-12
\end{flalign*}',
  '\begin{flalign*}
    y&=-3x^2-cx+9\\
    &=-3\left(x^2+\frac{c}{3}x\right)+9\\
    &=-3\left(x^2+2(x)\left(\frac{c}{6}\right)+\left(\frac{c}{6}\right)^2-\left(\frac{c}{6}\right)^2\right)+9\\
    &=-3\left(x+\frac{c}{6}\right)^2+3\left(\frac{c}{6}\right)^2+9
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    -\frac{c}{6}&=2\\
    c&=-12
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 75
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  75,
  'Chinese',
  '已知函數\ $y=4x^2-mx-8$ 的對稱軸是\ $x=-1$。求\ $m$ 的值。',
  '已知函數\ $y=4x^2-mx-8$ 的對稱軸是\ $x=-1$。求\ $m$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 75 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 75 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=4x^2-mx-8\\
    &=4\left(x^2-\frac{m}{4}x\right)-8\\
    &=4\left(x^2-2(x)\left(\frac{m}{8}\right)+\left(\frac{m}{8}\right)^2-\left(\frac{m}{8}\right)^2\right)-8\\
    &=4\left(x-\frac{m}{8}\right)^2-4\left(\frac{m}{8}\right)^2-8
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    \frac{m}{8}&=-1\\
    m&=-8
\end{flalign*}',
  '\begin{flalign*}
    y&=4x^2-mx-8\\
    &=4\left(x^2-\frac{m}{4}x\right)-8\\
    &=4\left(x^2-2(x)\left(\frac{m}{8}\right)+\left(\frac{m}{8}\right)^2-\left(\frac{m}{8}\right)^2\right)-8\\
    &=4\left(x-\frac{m}{8}\right)^2-4\left(\frac{m}{8}\right)^2-8
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    \frac{m}{8}&=-1\\
    m&=-8
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 76
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  76,
  'Chinese',
  '考慮函數\ $y=kx^2+4kx+k^2+1$，其中\ $k$ 是非零常數。若函數的最小值為\ $-3$，求\ $k$ 的值。',
  '考慮函數\ $y=kx^2+4kx+k^2+1$，其中\ $k$ 是非零常數。若函數的最小值為\ $-3$，求\ $k$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 76 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 76 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=kx^2+4kx+k^2+1\\
    &=k\left(x^2+4x\right)+k^2+1\\
    &=k\left(x^2+2(x)(2)+2^2-2^2\right)+k^2+1\\
    &=k(x+2)^2-k\left(2^2\right)+k^2+1\\
    &=k(x+2)^2+k^2-4k+1
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    k^2-4k+1&=-3\\
    k^2-4k+4&=0\\
    (k-2)^2&=0\\
    k&=2
\end{flalign*}',
  '\begin{flalign*}
    y&=kx^2+4kx+k^2+1\\
    &=k\left(x^2+4x\right)+k^2+1\\
    &=k\left(x^2+2(x)(2)+2^2-2^2\right)+k^2+1\\
    &=k(x+2)^2-k\left(2^2\right)+k^2+1\\
    &=k(x+2)^2+k^2-4k+1
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    k^2-4k+1&=-3\\
    k^2-4k+4&=0\\
    (k-2)^2&=0\\
    k&=2
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 77
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  77,
  'Chinese',
  '考慮函數\ $y=ax^2+10ax-4a^2+8$，其中\ $a$ 是非零常數。若函數的最大值是\ $33$，求\ $a$ 的值。',
  '考慮函數\ $y=ax^2+10ax-4a^2+8$，其中\ $a$ 是非零常數。若函數的最大值是\ $33$，求\ $a$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 77 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 77 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=ax^2+10ax-4a^2+8\\
    &=a\left(x^2+10x\right)-4a^2+8\\
    &=a\left(x^2+2(x)(5)+5^2-5^2\right)-4a^2+8\\
    &=a(x+5)^2-a\left(5^2\right)-4a^2+8\\
    &=a(x+5)^2-4a^2-25a+8
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    -4a^2-25a+8&=33\\
    -4a^2-25a-25&=0\\
    4a^2+25a+25&=0\\
    (4a+5)(a+5)&=0\\
    a&=-\frac{5}{4}\text{ 或\ }-5
\end{flalign*}',
  '\begin{flalign*}
    y&=ax^2+10ax-4a^2+8\\
    &=a\left(x^2+10x\right)-4a^2+8\\
    &=a\left(x^2+2(x)(5)+5^2-5^2\right)-4a^2+8\\
    &=a(x+5)^2-a\left(5^2\right)-4a^2+8\\
    &=a(x+5)^2-4a^2-25a+8
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    -4a^2-25a+8&=33\\
    -4a^2-25a-25&=0\\
    4a^2+25a+25&=0\\
    (4a+5)(a+5)&=0\\
    a&=-\frac{5}{4}\text{ 或\ }-5
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 78
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  78,
  'Chinese',
  '考慮函數\ $y=bx^2+2bx+b^2+7$，其中\ $b$ 為非零常數。若函數的最小值為\ $13$，求\ $b$ 的值。',
  '考慮函數\ $y=bx^2+2bx+b^2+7$，其中\ $b$ 為非零常數。若函數的最小值為\ $13$，求\ $b$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 78 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 78 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=bx^2+2bx+b^2+7\\
    &=b\left(x^2+2x\right)+b^2+7\\
    &=b\left(x^2+2x+1-1\right)+b^2+7\\
    &=b(x+1)^2-b(1)+b^2+7\\
    &=b(x+1)^2+b^2-b+7
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    b^2-b+7&=13\\
    b^2-b-6&=0\\
    (b-3)(b+2)&=0\\
    b&=3\text{ 或\ }-2\text{ (捨去)}
\end{flalign*}',
  '\begin{flalign*}
    y&=bx^2+2bx+b^2+7\\
    &=b\left(x^2+2x\right)+b^2+7\\
    &=b\left(x^2+2x+1-1\right)+b^2+7\\
    &=b(x+1)^2-b(1)+b^2+7\\
    &=b(x+1)^2+b^2-b+7
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    b^2-b+7&=13\\
    b^2-b-6&=0\\
    (b-3)(b+2)&=0\\
    b&=3\text{ 或\ }-2\text{ (捨去)}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 79
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  79,
  'Chinese',
  '考慮函數\ $y=cx^2+5cx-9c^2-6$，其中\ $c$ 為非零常數。若函數的最大值是\ $-125$，求\ $c$ 的值。',
  '考慮函數\ $y=cx^2+5cx-9c^2-6$，其中\ $c$ 為非零常數。若函數的最大值是\ $-125$，求\ $c$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 79 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 79 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=cx^2+5cx-9c^2-6\\
    &=c\left(x^2+5x\right)-9c^2-6\\
    &=c\left(x^2+2(x)\left(\frac{5}{2}\right)+\left(\frac{5}{2}\right)^2-\left(\frac{5}{2}\right)^2\right)-9c^2-6\\
    &=c\left(x+\frac{5}{2}\right)^2-c\left(\frac{5}{2}\right)^2-9c^2-6\\
    &=c\left(x+\frac{5}{2}\right)^2-9c^2-\frac{25}{4}c-6
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    -9c^2-\frac{25}{4}c-6&=-125\\
    -9c^2-\frac{25}{4}c+119&=0\\
    36c^2+25c-476&=0\\
    (c+4)(36c-119)&=0\\
    c&=-4\text{ 或\ }\frac{119}{36}\text{ (捨去)}
\end{flalign*}',
  '\begin{flalign*}
    y&=cx^2+5cx-9c^2-6\\
    &=c\left(x^2+5x\right)-9c^2-6\\
    &=c\left(x^2+2(x)\left(\frac{5}{2}\right)+\left(\frac{5}{2}\right)^2-\left(\frac{5}{2}\right)^2\right)-9c^2-6\\
    &=c\left(x+\frac{5}{2}\right)^2-c\left(\frac{5}{2}\right)^2-9c^2-6\\
    &=c\left(x+\frac{5}{2}\right)^2-9c^2-\frac{25}{4}c-6
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    -9c^2-\frac{25}{4}c-6&=-125\\
    -9c^2-\frac{25}{4}c+119&=0\\
    36c^2+25c-476&=0\\
    (c+4)(36c-119)&=0\\
    c&=-4\text{ 或\ }\frac{119}{36}\text{ (捨去)}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 80
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  80,
  'Chinese',
  '考慮函數\ $y=mx^2+7mx+m^2-2$，其中\ $m$ 為非零常數。若函數的最小值為\ $-35$，求\ $m$ 的值。',
  '考慮函數\ $y=mx^2+7mx+m^2-2$，其中\ $m$ 為非零常數。若函數的最小值為\ $-35$，求\ $m$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 80 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 80 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=mx^2+7mx+m^2-2\\
    &=m\left(x^2+7x\right)+m^2-2\\
    &=m\left(x^2+2(x)\left(\frac{7}{2}\right)+\left(\frac{7}{2}\right)^2-\left(\frac{7}{2}\right)^2\right)+m^2-2\\
    &=m\left(x+\frac{7}{2}\right)^2-m\left(\frac{7}{2}\right)^2+m^2-2\\
    &=m\left(x+\frac{7}{2}\right)^2+m^2-\frac{49}{4}m-2
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    m^2-\frac{49}{4}m-2&=-35\\
    m^2-\frac{49}{4}m+33&=0\\
    4m^2-49m+132&=0\\
    (m-4)(4m-33)&=0\\
    m&=4\text{ 或\ }\frac{33}{4}
\end{flalign*}',
  '\begin{flalign*}
    y&=mx^2+7mx+m^2-2\\
    &=m\left(x^2+7x\right)+m^2-2\\
    &=m\left(x^2+2(x)\left(\frac{7}{2}\right)+\left(\frac{7}{2}\right)^2-\left(\frac{7}{2}\right)^2\right)+m^2-2\\
    &=m\left(x+\frac{7}{2}\right)^2-m\left(\frac{7}{2}\right)^2+m^2-2\\
    &=m\left(x+\frac{7}{2}\right)^2+m^2-\frac{49}{4}m-2
\end{flalign*}
因此，我們可以得到
\begin{flalign*}
    m^2-\frac{49}{4}m-2&=-35\\
    m^2-\frac{49}{4}m+33&=0\\
    4m^2-49m+132&=0\\
    (m-4)(4m-33)&=0\\
    m&=4\text{ 或\ }\frac{33}{4}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 81
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  81,
  'Chinese',
  '圖中，$y=9-(x+2)^2$ 與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交。若\ $C$ 是函數上在\ $x$ 軸上方的一點，使得\ $\triangle ABC$ 的面積最大，求\ $\triangle ABC$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-7,0) -- (3,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,6) node[above] {$y$};
  \draw[domain=-5.25:1.25, smooth, variable=\x, blue] plot ({\x},{9/2 - (\x+2)^2/2}) node[above right] {$y=9-(x+2)^2$};
  \filldraw (-5,0) circle (2pt) node[below right] {$A$};
  \filldraw (1,0) circle (2pt) node[below left] {$B$};
  \filldraw (-2,9/2) circle (2pt) node[above] {$C$};
\end{tikzpicture}}
\end{center}',
  '圖中，$y=9-(x+2)^2$ 與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交。若\ $C$ 是函數上在\ $x$ 軸上方的一點，使得\ $\triangle ABC$ 的面積最大，求\ $\triangle ABC$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-7,0) -- (3,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,6) node[above] {$y$};
  \draw[domain=-5.25:1.25, smooth, variable=\x, blue] plot ({\x},{9/2 - (\x+2)^2/2}) node[above right] {$y=9-(x+2)^2$};
  \filldraw (-5,0) circle (2pt) node[below right] {$A$};
  \filldraw (1,0) circle (2pt) node[below left] {$B$};
  \filldraw (-2,9/2) circle (2pt) node[above] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 81 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 81 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=9-(x+2)^2\\
    &=-(x+2)^2+9
\end{flalign*}
因此，$C$ 的座標為\ $(-2,9)$。 \\
將\ $y=0$ 代入方程，我們可以得到
\begin{flalign*}
    0&=9-(x+2)^2\\
    3^2-(x+2)^2&=0\\
    \left(3+(x+2)\right)\left(3-(x+2)\right)&=0\\
    (x+5)(-x+1)&=0\\
    x&=-5\text{ 或\ }1
\end{flalign*}
因此\ $A$ 和\ $B$ 的座標分別為\ $(-5,0)$ 和\ $(1,0)$。 \\
$\triangle ABC$ 的面積\ $\displaystyle =\frac{1}{2}\left(1-(-5)\right)(9)=27$ 單位平方。',
  '\begin{flalign*}
    y&=9-(x+2)^2\\
    &=-(x+2)^2+9
\end{flalign*}
因此，$C$ 的座標為\ $(-2,9)$。 \\
將\ $y=0$ 代入方程，我們可以得到
\begin{flalign*}
    0&=9-(x+2)^2\\
    3^2-(x+2)^2&=0\\
    \left(3+(x+2)\right)\left(3-(x+2)\right)&=0\\
    (x+5)(-x+1)&=0\\
    x&=-5\text{ 或\ }1
\end{flalign*}
因此\ $A$ 和\ $B$ 的座標分別為\ $(-5,0)$ 和\ $(1,0)$。 \\
$\triangle ABC$ 的面積\ $\displaystyle =\frac{1}{2}\left(1-(-5)\right)(9)=27$ 單位平方。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 82
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  82,
  'Chinese',
  '圖中，$y=16-(x-3)^2$ 與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交。若\ $C$ 是函數上在\ $x$ 軸上方的一點，使得\ $\triangle ABC$ 的面積最大，求\ $\triangle ABC$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-3,0) -- (9,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,7) node[above] {$y$};
  \draw[domain=-1.25:7.25, smooth, variable=\x, blue] plot ({\x},{16/3 - (\x-3)^2/3}) node[above right] {$y=16-(x-3)^2$};
  \filldraw (-1,0) circle (2pt) node[below right] {$A$};
  \filldraw (7,0) circle (2pt) node[below left] {$B$};
  \filldraw (3,16/3) circle (2pt) node[above] {$C$};
\end{tikzpicture}}
\end{center}',
  '圖中，$y=16-(x-3)^2$ 與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交。若\ $C$ 是函數上在\ $x$ 軸上方的一點，使得\ $\triangle ABC$ 的面積最大，求\ $\triangle ABC$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-3,0) -- (9,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,7) node[above] {$y$};
  \draw[domain=-1.25:7.25, smooth, variable=\x, blue] plot ({\x},{16/3 - (\x-3)^2/3}) node[above right] {$y=16-(x-3)^2$};
  \filldraw (-1,0) circle (2pt) node[below right] {$A$};
  \filldraw (7,0) circle (2pt) node[below left] {$B$};
  \filldraw (3,16/3) circle (2pt) node[above] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 82 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 82 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=16-(x-3)^2\\
    &=-(x-3)^2+16
\end{flalign*}
因此，$C$ 的座標為\ $(3,16)$。 \\
將\ $y=0$ 代入方程，我們可以得到
\begin{flalign*}
    0&=16-(x-3)^2\\
    4^2-(x-3)^2&=0\\
    \left(4+(x-3)\right)\left(4-(x-3)\right)&=0\\
    (x+1)(-x+7)&=0\\
    x&=-1\text{ 或\ }7
\end{flalign*}
因此\ $A$ 和\ $B$ 的座標分別為\ $(-1,0)$ 和\ $(7,0)$。 \\
$\triangle ABC$ 的面積\ $\displaystyle =\frac{1}{2}\left(7-(-1)\right)(16)=64$ 單位平方。',
  '\begin{flalign*}
    y&=16-(x-3)^2\\
    &=-(x-3)^2+16
\end{flalign*}
因此，$C$ 的座標為\ $(3,16)$。 \\
將\ $y=0$ 代入方程，我們可以得到
\begin{flalign*}
    0&=16-(x-3)^2\\
    4^2-(x-3)^2&=0\\
    \left(4+(x-3)\right)\left(4-(x-3)\right)&=0\\
    (x+1)(-x+7)&=0\\
    x&=-1\text{ 或\ }7
\end{flalign*}
因此\ $A$ 和\ $B$ 的座標分別為\ $(-1,0)$ 和\ $(7,0)$。 \\
$\triangle ABC$ 的面積\ $\displaystyle =\frac{1}{2}\left(7-(-1)\right)(16)=64$ 單位平方。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 83
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  83,
  'Chinese',
  '圖中，$y=25-(x+1)^2$ 與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交。若\ $C$ 是函數上在\ $x$ 軸上方的一點，使得\ $\triangle ABC$ 的面積最大，求\ $\triangle ABC$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-4,0) -- (3,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,5) node[above] {$y$};
  \draw[domain=-6.5:4.5, smooth, variable=\x, blue] plot ({\x/2},{25/6 - (\x+1)^2/6}) node[above right] {$y=25-(x+1)^2$};
  \filldraw (-3,0) circle (2pt) node[below right] {$A$};
  \filldraw (2,0) circle (2pt) node[below left] {$B$};
  \filldraw (-1/2,25/6) circle (2pt) node[above] {$C$};
\end{tikzpicture}}
\end{center}',
  '圖中，$y=25-(x+1)^2$ 與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交。若\ $C$ 是函數上在\ $x$ 軸上方的一點，使得\ $\triangle ABC$ 的面積最大，求\ $\triangle ABC$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-4,0) -- (3,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,5) node[above] {$y$};
  \draw[domain=-6.5:4.5, smooth, variable=\x, blue] plot ({\x/2},{25/6 - (\x+1)^2/6}) node[above right] {$y=25-(x+1)^2$};
  \filldraw (-3,0) circle (2pt) node[below right] {$A$};
  \filldraw (2,0) circle (2pt) node[below left] {$B$};
  \filldraw (-1/2,25/6) circle (2pt) node[above] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 83 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 83 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=25-(x+1)^2\\
    &=-(x+1)^2+25
\end{flalign*}
因此，$C$ 的座標為\ $(-1,25)$。 \\
將\ $y=0$ 代入方程，我們可以得到
\begin{flalign*}
    0&=25-(x+1)^2\\
    5^2-(x+1)^2&=0\\
    \left(5+(x+1)\right)\left(5-(x+1)\right)&=0\\
    (x+6)(-x+4)&=0\\
    x&=-6\text{ 或\ }4
\end{flalign*}
因此\ $A$ 和\ $B$ 的座標分別為\ $(-6,0)$ 和\ $(4,0)$。 \\
$\triangle ABC$ 的面積\ $\displaystyle =\frac{1}{2}\left(4-(-6)\right)(25)=125$ 單位平方。',
  '\begin{flalign*}
    y&=25-(x+1)^2\\
    &=-(x+1)^2+25
\end{flalign*}
因此，$C$ 的座標為\ $(-1,25)$。 \\
將\ $y=0$ 代入方程，我們可以得到
\begin{flalign*}
    0&=25-(x+1)^2\\
    5^2-(x+1)^2&=0\\
    \left(5+(x+1)\right)\left(5-(x+1)\right)&=0\\
    (x+6)(-x+4)&=0\\
    x&=-6\text{ 或\ }4
\end{flalign*}
因此\ $A$ 和\ $B$ 的座標分別為\ $(-6,0)$ 和\ $(4,0)$。 \\
$\triangle ABC$ 的面積\ $\displaystyle =\frac{1}{2}\left(4-(-6)\right)(25)=125$ 單位平方。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 84
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  84,
  'Chinese',
  '圖中，$y=36-(x-2)^2$ 與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交。若\ $C$ 是函數上在\ $x$ 軸上方的一點，使得\ $\triangle ABC$ 的面積最大，求\ $\triangle ABC$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-3,0) -- (5,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,4) node[above] {$y$};
  \draw[domain=-5:9, smooth, variable=\x, blue] plot ({\x/2},{36/12 - (\x-2)^2/12}) node[above right] {$y=36-(x-2)^2$};
  \filldraw (-2,0) circle (2pt) node[below right] {$A$};
  \filldraw (4,0) circle (2pt) node[below left] {$B$};
  \filldraw (1,3) circle (2pt) node[above] {$C$};
\end{tikzpicture}}
\end{center}',
  '圖中，$y=36-(x-2)^2$ 與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交。若\ $C$ 是函數上在\ $x$ 軸上方的一點，使得\ $\triangle ABC$ 的面積最大，求\ $\triangle ABC$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-3,0) -- (5,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,4) node[above] {$y$};
  \draw[domain=-5:9, smooth, variable=\x, blue] plot ({\x/2},{36/12 - (\x-2)^2/12}) node[above right] {$y=36-(x-2)^2$};
  \filldraw (-2,0) circle (2pt) node[below right] {$A$};
  \filldraw (4,0) circle (2pt) node[below left] {$B$};
  \filldraw (1,3) circle (2pt) node[above] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 84 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 84 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=36-(x-2)^2\\
    &=-(x-2)^2+36
\end{flalign*}
因此，$C$ 的座標為\ $(2,36)$。 \\
將\ $y=0$ 代入方程，我們可以得到
\begin{flalign*}
    0&=36-(x-2)^2\\
    6^2-(x-2)^2&=0
    \left(6+(x-2)\right)\left(6-(x-2)\right)&=0\\
    (x+4)(-x+8)&=0\\
    x&=-4\text{ 或\ }8
\end{flalign*}
因此\ $A$ 和\ $B$ 的座標分別為\ $(-4,0)$ 和\ $(8,0)$。 \\
$\triangle ABC$ 的面積\ $\displaystyle =\frac{1}{2}\left(8-(-4)\right)(36)=216$ 單位平方。',
  '\begin{flalign*}
    y&=36-(x-2)^2\\
    &=-(x-2)^2+36
\end{flalign*}
因此，$C$ 的座標為\ $(2,36)$。 \\
將\ $y=0$ 代入方程，我們可以得到
\begin{flalign*}
    0&=36-(x-2)^2\\
    6^2-(x-2)^2&=0
    \left(6+(x-2)\right)\left(6-(x-2)\right)&=0\\
    (x+4)(-x+8)&=0\\
    x&=-4\text{ 或\ }8
\end{flalign*}
因此\ $A$ 和\ $B$ 的座標分別為\ $(-4,0)$ 和\ $(8,0)$。 \\
$\triangle ABC$ 的面積\ $\displaystyle =\frac{1}{2}\left(8-(-4)\right)(36)=216$ 單位平方。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 85
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  85,
  'Chinese',
  '圖中，$y=64-(x-4)^2$ 與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交。若\ $C$ 是函數上在\ $x$ 軸上方的一點，使得\ $\triangle ABC$ 的面積最大，求\ $\triangle ABC$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-2,0) -- (14/3,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,70/18) node[above] {$y$};
  \draw[domain=-5:13, smooth, variable=\x, blue] plot ({\x/3},{64/18 - (\x-4)^2/18}) node[above right] {$y=64-(x-4)^2$};
  \filldraw (-4/3,0) circle (2pt) node[below right] {$A$};
  \filldraw (4,0) circle (2pt) node[below left] {$B$};
  \filldraw (4/3,64/18) circle (2pt) node[above] {$C$};
\end{tikzpicture}}
\end{center}',
  '圖中，$y=64-(x-4)^2$ 與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交。若\ $C$ 是函數上在\ $x$ 軸上方的一點，使得\ $\triangle ABC$ 的面積最大，求\ $\triangle ABC$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-2,0) -- (14/3,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,70/18) node[above] {$y$};
  \draw[domain=-5:13, smooth, variable=\x, blue] plot ({\x/3},{64/18 - (\x-4)^2/18}) node[above right] {$y=64-(x-4)^2$};
  \filldraw (-4/3,0) circle (2pt) node[below right] {$A$};
  \filldraw (4,0) circle (2pt) node[below left] {$B$};
  \filldraw (4/3,64/18) circle (2pt) node[above] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 85 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 85 AND language = 'Chinese'),
  '\begin{flalign*}
    y&=64-(x-4)^2\\
    &=-(x-4)^2+64
\end{flalign*}
因此，$C$ 的座標為\ $(4,64)$。 \\
將\ $y=0$ 代入方程，我們可以得到
\begin{flalign*}
    0&=64-(x-4)^2\\
    8^2-(x-4)^2&=0\\
    \left(8+(x-4)\right)\left(8-(x-4)\right)&=0\\
    (x+4)(-x+12)&=0\\
    x&=-4\text{ 或\ }12
\end{flalign*}
因此\ $A$ 和\ $B$ 的座標分別為\ $(-4,0)$ 和\ $(12,0)$。 \\
$\triangle ABC$ 的面積\ $\displaystyle =\frac{1}{2}\left(12-(-4)\right)(64)=512$ 單位平方。',
  '\begin{flalign*}
    y&=64-(x-4)^2\\
    &=-(x-4)^2+64
\end{flalign*}
因此，$C$ 的座標為\ $(4,64)$。 \\
將\ $y=0$ 代入方程，我們可以得到
\begin{flalign*}
    0&=64-(x-4)^2\\
    8^2-(x-4)^2&=0\\
    \left(8+(x-4)\right)\left(8-(x-4)\right)&=0\\
    (x+4)(-x+12)&=0\\
    x&=-4\text{ 或\ }12
\end{flalign*}
因此\ $A$ 和\ $B$ 的座標分別為\ $(-4,0)$ 和\ $(12,0)$。 \\
$\triangle ABC$ 的面積\ $\displaystyle =\frac{1}{2}\left(12-(-4)\right)(64)=512$ 單位平方。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 86
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  86,
  'Chinese',
  '圖中顯示了函數\ $y=x^2+4x+k$。\ $C(-2,-9)$ 是它的頂點，且函數與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交。若\ $ABDE$ 為長方形，$DCE$ 為水平線，求長方形\ $ABDE$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Highlight the rectangle with a translucent fill
  \filldraw[fill=green!10, draw=green] (-5,0) rectangle (1,-9/1.5);
  % Label rectangle vertices
  \node at (-5,-9/1.5) [below left] {$E$};
  \node at (1,-9/1.5) [below right] {$D$};
  % Draw axes
  \draw[->] (-6,0) -- (3,0) node[right] {$x$};
  \draw[->] (0,-10/1.5) -- (0,3/1.5) node[above] {$y$};
  % Plot y=x^2+4x-5
  \draw[domain=-5.25:1.25,smooth,variable=\x,blue,thick] 
       plot ({\x},{\x*\x/1.5+4*\x/1.5-5/1.5}) node[below right] {$y=x^2+4x+k$};
  % Mark intercepts and vertex
  \filldraw [black] (-5,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (1,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (-2,-9/1.5) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}',
  '圖中顯示了函數\ $y=x^2+4x+k$。\ $C(-2,-9)$ 是它的頂點，且函數與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交。若\ $ABDE$ 為長方形，$DCE$ 為水平線，求長方形\ $ABDE$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Highlight the rectangle with a translucent fill
  \filldraw[fill=green!10, draw=green] (-5,0) rectangle (1,-9/1.5);
  % Label rectangle vertices
  \node at (-5,-9/1.5) [below left] {$E$};
  \node at (1,-9/1.5) [below right] {$D$};
  % Draw axes
  \draw[->] (-6,0) -- (3,0) node[right] {$x$};
  \draw[->] (0,-10/1.5) -- (0,3/1.5) node[above] {$y$};
  % Plot y=x^2+4x-5
  \draw[domain=-5.25:1.25,smooth,variable=\x,blue,thick] 
       plot ({\x},{\x*\x/1.5+4*\x/1.5-5/1.5}) node[below right] {$y=x^2+4x+k$};
  % Mark intercepts and vertex
  \filldraw [black] (-5,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (1,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (-2,-9/1.5) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 86 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 86 AND language = 'Chinese'),
  '將\ $C(-2,-9)$ 代入方程，我們可以得到
\begin{flalign*}
    -9&=(-2)^2+4(-2)+k\\
    -9&=4-8+k\\
    k&=-5
\end{flalign*}
將\ $y=0$ 代入方程，我們可以得到
\begin{flalign*}
    0&=x^2+4x-5\\
    (x+5)(x-1)&=0\\
    x&=-5\text{ 或\ }1
\end{flalign*}
因此\ $A$ 和\ $B$ 的座標分別為\ $(-5,0)$ 和\ $(1,0)$。 \\
長方形\ $ABDE$ 的面積\ $\displaystyle =\left(1-(-5)\right)(9)=54$ 單位平方。',
  '將\ $C(-2,-9)$ 代入方程，我們可以得到
\begin{flalign*}
    -9&=(-2)^2+4(-2)+k\\
    -9&=4-8+k\\
    k&=-5
\end{flalign*}
將\ $y=0$ 代入方程，我們可以得到
\begin{flalign*}
    0&=x^2+4x-5\\
    (x+5)(x-1)&=0\\
    x&=-5\text{ 或\ }1
\end{flalign*}
因此\ $A$ 和\ $B$ 的座標分別為\ $(-5,0)$ 和\ $(1,0)$。 \\
長方形\ $ABDE$ 的面積\ $\displaystyle =\left(1-(-5)\right)(9)=54$ 單位平方。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 87
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  87,
  'Chinese',
  '圖中顯示了函數\ $y=x^2-4x+k$。\ $C(-2,-9)$ 是它的頂點，且函數與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交。若\ $ABDE$ 為長方形，$DCE$ 為水平線，求長方形\ $ABDE$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Highlight the rectangle with a translucent fill
  \filldraw[fill=green!10, draw=green] (-1,0) rectangle (5,-9/1.5);
  % Label rectangle vertices
  \node at (-1,-9/1.5) [below left] {$E$};
  \node at (5,-9/1.5) [below right] {$D$};
  % Draw axes
  \draw[->] (-3,0) -- (7,0) node[right] {$x$};
  \draw[->] (0,-10/1.5) -- (0,2) node[above] {$y$};  \draw[domain=-1.5:5.5,smooth,variable=\x,blue,thick] 
       plot ({\x},{\x*\x/1.5-4*\x/1.5-5/1.5}) node[below left] {$y=x^2-4x+k$};
  % Mark intercepts and vertex
  \filldraw [black] (-1,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (5,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (2,-9/1.5) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}',
  '圖中顯示了函數\ $y=x^2-4x+k$。\ $C(-2,-9)$ 是它的頂點，且函數與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交。若\ $ABDE$ 為長方形，$DCE$ 為水平線，求長方形\ $ABDE$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Highlight the rectangle with a translucent fill
  \filldraw[fill=green!10, draw=green] (-1,0) rectangle (5,-9/1.5);
  % Label rectangle vertices
  \node at (-1,-9/1.5) [below left] {$E$};
  \node at (5,-9/1.5) [below right] {$D$};
  % Draw axes
  \draw[->] (-3,0) -- (7,0) node[right] {$x$};
  \draw[->] (0,-10/1.5) -- (0,2) node[above] {$y$};  \draw[domain=-1.5:5.5,smooth,variable=\x,blue,thick] 
       plot ({\x},{\x*\x/1.5-4*\x/1.5-5/1.5}) node[below left] {$y=x^2-4x+k$};
  % Mark intercepts and vertex
  \filldraw [black] (-1,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (5,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (2,-9/1.5) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 87 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 87 AND language = 'Chinese'),
  '將\ $C(2,-9)$ 代入方程，我們可以得到
\begin{flalign*}
    -9&=2^2-4(2)+k\\
    -9&=4-8+k\\
    k&=-5
\end{flalign*}
將\ $y=0$ 代入方程，我們可以得到
\begin{flalign*}
    0&=x^2-4x-5\\
    (x+1)(x-5)&=0\\
    x&=-1\text{ 或\ }5
\end{flalign*}
因此\ $A$ 和\ $B$ 的座標分別為\ $(-1,0)$ 和\ $(5,0)$。 \\
長方形\ $ABDE$ 的面積\ $\displaystyle =\left(5-(-1)\right)(9)=54$ 單位平方。',
  '將\ $C(2,-9)$ 代入方程，我們可以得到
\begin{flalign*}
    -9&=2^2-4(2)+k\\
    -9&=4-8+k\\
    k&=-5
\end{flalign*}
將\ $y=0$ 代入方程，我們可以得到
\begin{flalign*}
    0&=x^2-4x-5\\
    (x+1)(x-5)&=0\\
    x&=-1\text{ 或\ }5
\end{flalign*}
因此\ $A$ 和\ $B$ 的座標分別為\ $(-1,0)$ 和\ $(5,0)$。 \\
長方形\ $ABDE$ 的面積\ $\displaystyle =\left(5-(-1)\right)(9)=54$ 單位平方。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 88
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  88,
  'Chinese',
  '圖中顯示了函數\ $y=x^2+8x+k$。\ $C(-2,-9)$ 是它的頂點，且函數與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交。若\ $ABDE$ 為長方形，$DCE$ 為水平線，求長方形\ $ABDE$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Highlight the rectangle with a translucent fill
  \filldraw[fill=green!10, draw=green] (-8/2,0) rectangle (0,-16/4);
  % Label rectangle vertices
  \node at (-8/2,-16/4) [below left] {$E$};
  \node at (0,-16/4) [below right] {$D$};
  % Draw axes
  \draw[->] (-9/2,0) -- (1,0) node[right] {$x$};
  \draw[->] (0,-17/4) -- (0,1) node[above] {$y$};  \draw[domain=-8.5:0.5,smooth,variable=\x,blue,thick] 
       plot ({\x/2},{\x*\x/4+8*\x/4}) node[below right] {$y=x^2+8x+k$};
  % Mark intercepts and vertex
  \filldraw [black] (-8/2,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (0,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (-4/2,-16/4) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}',
  '圖中顯示了函數\ $y=x^2+8x+k$。\ $C(-2,-9)$ 是它的頂點，且函數與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交。若\ $ABDE$ 為長方形，$DCE$ 為水平線，求長方形\ $ABDE$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Highlight the rectangle with a translucent fill
  \filldraw[fill=green!10, draw=green] (-8/2,0) rectangle (0,-16/4);
  % Label rectangle vertices
  \node at (-8/2,-16/4) [below left] {$E$};
  \node at (0,-16/4) [below right] {$D$};
  % Draw axes
  \draw[->] (-9/2,0) -- (1,0) node[right] {$x$};
  \draw[->] (0,-17/4) -- (0,1) node[above] {$y$};  \draw[domain=-8.5:0.5,smooth,variable=\x,blue,thick] 
       plot ({\x/2},{\x*\x/4+8*\x/4}) node[below right] {$y=x^2+8x+k$};
  % Mark intercepts and vertex
  \filldraw [black] (-8/2,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (0,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (-4/2,-16/4) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 88 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 88 AND language = 'Chinese'),
  '將\ $C(-4,-16)$ 代入方程，我們可以得到
\begin{flalign*}
    -16&=(-4)^2+8(-4)+k\\
    -16&=16-32+k\\
    k&=0
\end{flalign*}
將\ $y=0$ 代入方程，我們可以得到
\begin{flalign*}
    0&=x^2+8x\\
    x(x+8)&=0\\
    x&=0\text{ 或\ }-8
\end{flalign*}
因此\ $A$ 和\ $B$ 的座標分別為\ $(-8,0)$ 和\ $(0,0)$。 \\
長方形\ $ABDE$ 的面積\ $\displaystyle =(8)(16)=128$ 單位平方。',
  '將\ $C(-4,-16)$ 代入方程，我們可以得到
\begin{flalign*}
    -16&=(-4)^2+8(-4)+k\\
    -16&=16-32+k\\
    k&=0
\end{flalign*}
將\ $y=0$ 代入方程，我們可以得到
\begin{flalign*}
    0&=x^2+8x\\
    x(x+8)&=0\\
    x&=0\text{ 或\ }-8
\end{flalign*}
因此\ $A$ 和\ $B$ 的座標分別為\ $(-8,0)$ 和\ $(0,0)$。 \\
長方形\ $ABDE$ 的面積\ $\displaystyle =(8)(16)=128$ 單位平方。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 89
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  89,
  'Chinese',
  '圖中顯示了函數\ $y=x^2+10x+k$。\ $C(-2,-9)$ 是它的頂點，且函數與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交。若\ $ABDE$ 為長方形，$DCE$ 為水平線，求長方形\ $ABDE$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Highlight the rectangle with a translucent fill
  \filldraw[fill=green!10, draw=green] (-11/2,0) rectangle (1/2,-36/5);
  % Label rectangle vertices
  \node at (-11/2,-36/5) [below left] {$E$};
  \node at (1/2,-36/5) [below right] {$D$};
  % Draw axes
  \draw[->] (-12/2,0) -- (4/2,0) node[right] {$x$};
  \draw[->] (0,-40/5) -- (0,5/5) node[above] {$y$};  \draw[domain=-11.5:1.5,smooth,variable=\x,blue,thick] 
       plot ({\x/2},{\x*\x/5+10*\x/5-11/5}) node[below right] {$y=x^2+10x+k$};
  % Mark intercepts and vertex
  \filldraw [black] (-11/2,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (1/2,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (-5/2,-36/5) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}',
  '圖中顯示了函數\ $y=x^2+10x+k$。\ $C(-2,-9)$ 是它的頂點，且函數與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交。若\ $ABDE$ 為長方形，$DCE$ 為水平線，求長方形\ $ABDE$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Highlight the rectangle with a translucent fill
  \filldraw[fill=green!10, draw=green] (-11/2,0) rectangle (1/2,-36/5);
  % Label rectangle vertices
  \node at (-11/2,-36/5) [below left] {$E$};
  \node at (1/2,-36/5) [below right] {$D$};
  % Draw axes
  \draw[->] (-12/2,0) -- (4/2,0) node[right] {$x$};
  \draw[->] (0,-40/5) -- (0,5/5) node[above] {$y$};  \draw[domain=-11.5:1.5,smooth,variable=\x,blue,thick] 
       plot ({\x/2},{\x*\x/5+10*\x/5-11/5}) node[below right] {$y=x^2+10x+k$};
  % Mark intercepts and vertex
  \filldraw [black] (-11/2,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (1/2,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (-5/2,-36/5) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 89 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 89 AND language = 'Chinese'),
  '將\ $C(-5,-36)$ 代入方程，我們可以得到
\begin{flalign*}
    -36&=(-5)^2+10(-5)+k\\
    -36&=25-50+k\\
    k&=-11
\end{flalign*}
將\ $y=0$ 代入方程，我們可以得到
\begin{flalign*}
    0&=x^2+10x-11\\
    (x+11)(x-1)&=0\\
    x&=-11\text{ 或\ }1
\end{flalign*}
因此\ $A$ 和\ $B$ 的座標分別為\ $(-11,0)$ 和\ $(1,0)$。 \\
長方形\ $ABDE$ 的面積\ $\displaystyle =\left(1-(-11)\right)(36)=432$ 單位平方。',
  '將\ $C(-5,-36)$ 代入方程，我們可以得到
\begin{flalign*}
    -36&=(-5)^2+10(-5)+k\\
    -36&=25-50+k\\
    k&=-11
\end{flalign*}
將\ $y=0$ 代入方程，我們可以得到
\begin{flalign*}
    0&=x^2+10x-11\\
    (x+11)(x-1)&=0\\
    x&=-11\text{ 或\ }1
\end{flalign*}
因此\ $A$ 和\ $B$ 的座標分別為\ $(-11,0)$ 和\ $(1,0)$。 \\
長方形\ $ABDE$ 的面積\ $\displaystyle =\left(1-(-11)\right)(36)=432$ 單位平方。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 90
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  90,
  'Chinese',
  '圖中顯示了函數\ $y=x^2+2x+k$。\ $C(-2,-9)$ 是它的頂點，且函數與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交。若\ $ABDE$ 為長方形，$DCE$ 為水平線，求長方形\ $ABDE$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Highlight the rectangle with a translucent fill
  \filldraw[fill=green!10, draw=green] (-3,0) rectangle (1,-4);
  % Label rectangle vertices
  \node at (-3,-4) [below left] {$E$};
  \node at (1,-4) [below right] {$D$};
  % Draw axes
  \draw[->] (-4,0) -- (2,0) node[right] {$x$};
  \draw[->] (0,-4.5) -- (0,1.25) node[above] {$y$};  \draw[domain=-3.25:1.25,smooth,variable=\x,blue,thick] 
       plot ({\x},{\x*\x+2*\x-3}) node[below right] {$y=x^2+2x+k$};
  % Mark intercepts and vertex
  \filldraw [black] (-3,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (1,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (-1,-4) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}',
  '圖中顯示了函數\ $y=x^2+2x+k$。\ $C(-2,-9)$ 是它的頂點，且函數與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交。若\ $ABDE$ 為長方形，$DCE$ 為水平線，求長方形\ $ABDE$ 的面積。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
    % Highlight the rectangle with a translucent fill
  \filldraw[fill=green!10, draw=green] (-3,0) rectangle (1,-4);
  % Label rectangle vertices
  \node at (-3,-4) [below left] {$E$};
  \node at (1,-4) [below right] {$D$};
  % Draw axes
  \draw[->] (-4,0) -- (2,0) node[right] {$x$};
  \draw[->] (0,-4.5) -- (0,1.25) node[above] {$y$};  \draw[domain=-3.25:1.25,smooth,variable=\x,blue,thick] 
       plot ({\x},{\x*\x+2*\x-3}) node[below right] {$y=x^2+2x+k$};
  % Mark intercepts and vertex
  \filldraw [black] (-3,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (1,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (-1,-4) circle (2pt) node[below] {$C$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 90 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 90 AND language = 'Chinese'),
  '將\ $C(-1,-4)$ 代入方程，我們可以得到
\begin{flalign*}
    -4&=(-1)^2+2(-1)+k\\
    -4&=1-2+k\\
    k&=-3
\end{flalign*}
將\ $y=0$ 代入方程，我們可以得到
\begin{flalign*}
    0&=x^2+2x-3\\
    (x+3)(x-1)&=0\\
    x&=-3\text{ 或\ }1
\end{flalign*}
因此\ $A$ 和\ $B$ 的座標分別為\ $(-3,0)$ 和\ $(1,0)$。 \\
長方形\ $ABDE$ 的面積\ $\displaystyle =\left(1-(-3)\right)(4)=16$ 單位平方。',
  '將\ $C(-1,-4)$ 代入方程，我們可以得到
\begin{flalign*}
    -4&=(-1)^2+2(-1)+k\\
    -4&=1-2+k\\
    k&=-3
\end{flalign*}
將\ $y=0$ 代入方程，我們可以得到
\begin{flalign*}
    0&=x^2+2x-3\\
    (x+3)(x-1)&=0\\
    x&=-3\text{ 或\ }1
\end{flalign*}
因此\ $A$ 和\ $B$ 的座標分別為\ $(-3,0)$ 和\ $(1,0)$。 \\
長方形\ $ABDE$ 的面積\ $\displaystyle =\left(1-(-3)\right)(4)=16$ 單位平方。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 91
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  91,
  'Chinese',
  '圖中，函數\ $y=(x-2)^2+k$ 與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交，與\ $y$ 軸在\ $C(0,3)$ 相交。如果\ $P$ 是函數上\ $x$ 軸下方的點，那麼\ $\triangle ABP$ 的面積是否可能大於\ $\triangle ABC$ 的面積？解釋你的答案。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-1,0) -- (5,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,5) node[above] {$y$};

  \draw[domain=-0.5:4.5, smooth, variable=\x, blue, thick] 
        plot ({\x}, {(\x-2)^2-1}) node[below right] {$y=(x-2)^2+k$};

  \filldraw [black] (1,0) circle (2pt) node[below right] {$A$};
  \filldraw [black] (3,0) circle (2pt) node[below left] {$B$};
  \filldraw [black] (0,3) circle (2pt) node[right] {$C(0,3)$};
\end{tikzpicture}}
\end{center}',
  '圖中，函數\ $y=(x-2)^2+k$ 與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交，與\ $y$ 軸在\ $C(0,3)$ 相交。如果\ $P$ 是函數上\ $x$ 軸下方的點，那麼\ $\triangle ABP$ 的面積是否可能大於\ $\triangle ABC$ 的面積？解釋你的答案。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-1,0) -- (5,0) node[right] {$x$};
  \draw[->] (0,-1) -- (0,5) node[above] {$y$};

  \draw[domain=-0.5:4.5, smooth, variable=\x, blue, thick] 
        plot ({\x}, {(\x-2)^2-1}) node[below right] {$y=(x-2)^2+k$};

  \filldraw [black] (1,0) circle (2pt) node[below right] {$A$};
  \filldraw [black] (3,0) circle (2pt) node[below left] {$B$};
  \filldraw [black] (0,3) circle (2pt) node[right] {$C(0,3)$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 91 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 91 AND language = 'Chinese'),
  '將\ $C(0,3)$ 代入方程，我們可以得到
\begin{flalign*}
    3&=(0-2)^2+k\\
    3&=4+k\\
    k&=-1
\end{flalign*}
因此，頂點的座標為\ $(2,-1)$。 \\
當\ $P$ 為頂點時，$\triangle ABP$ 的面積最大。 \\
由於\ $\triangle ABP$ 與\ $\triangle ABC$ 有相同的底\ $AB$，$C$ 到\ $AB$ 的垂直距離大於\ $P$ 到\ $AB$ 的垂直距離的最大值，所以\ $\triangle ABC$ 的面積大於\ $\triangle ABP$ 的面積。 \\
因此，\ $\triangle ABP$ 的面積不可能大於\ $\triangle ABC$ 的面積。',
  '將\ $C(0,3)$ 代入方程，我們可以得到
\begin{flalign*}
    3&=(0-2)^2+k\\
    3&=4+k\\
    k&=-1
\end{flalign*}
因此，頂點的座標為\ $(2,-1)$。 \\
當\ $P$ 為頂點時，$\triangle ABP$ 的面積最大。 \\
由於\ $\triangle ABP$ 與\ $\triangle ABC$ 有相同的底\ $AB$，$C$ 到\ $AB$ 的垂直距離大於\ $P$ 到\ $AB$ 的垂直距離的最大值，所以\ $\triangle ABC$ 的面積大於\ $\triangle ABP$ 的面積。 \\
因此，\ $\triangle ABP$ 的面積不可能大於\ $\triangle ABC$ 的面積。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 92
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  92,
  'Chinese',
  '圖中，函數\ $y=(x-4)^2+k$ 與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交，與\ $y$ 軸在\ $C(0,3)$ 相交。如果\ $P$ 是函數上\ $x$ 軸下方的點，那麼\ $\triangle ABP$ 的面積是否可能大於\ $\triangle ABC$ 的面積？解釋你的答案。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-1/2,0) -- (9/2,0) node[right] {$x$};
  \draw[->] (0,-12/4+0.25) -- (0,9/4) node[above] {$y$};

  \draw[domain=-0.25:8.25, smooth, variable=\x, blue, thick] 
        plot ({\x/2}, {(\x-4)^2/4-9/4}) node[below right] {$y=(x-4)^2+k$};

  \filldraw [black] (1/2,0) circle (2pt) node[below right] {$A$};
  \filldraw [black] (7/2,0) circle (2pt) node[below left] {$B$};
  \filldraw [black] (0,7/4) circle (2pt) node[right] {$C(0,7)$};
\end{tikzpicture}}
\end{center}',
  '圖中，函數\ $y=(x-4)^2+k$ 與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交，與\ $y$ 軸在\ $C(0,3)$ 相交。如果\ $P$ 是函數上\ $x$ 軸下方的點，那麼\ $\triangle ABP$ 的面積是否可能大於\ $\triangle ABC$ 的面積？解釋你的答案。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-1/2,0) -- (9/2,0) node[right] {$x$};
  \draw[->] (0,-12/4+0.25) -- (0,9/4) node[above] {$y$};

  \draw[domain=-0.25:8.25, smooth, variable=\x, blue, thick] 
        plot ({\x/2}, {(\x-4)^2/4-9/4}) node[below right] {$y=(x-4)^2+k$};

  \filldraw [black] (1/2,0) circle (2pt) node[below right] {$A$};
  \filldraw [black] (7/2,0) circle (2pt) node[below left] {$B$};
  \filldraw [black] (0,7/4) circle (2pt) node[right] {$C(0,7)$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 92 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 92 AND language = 'Chinese'),
  '將\ $C(0,7)$ 代入方程，我們可以得到
\begin{flalign*}
    7&=(0-4)^2+k\\
    7&=16+k\\
    k&=-9
\end{flalign*}
因此，頂點的座標為\ $(4,-9)$。 \\
當\ $P$ 為頂點時，$\triangle ABP$ 的面積最大。 \\
由於\ $\triangle ABP$ 與\ $\triangle ABC$ 有相同的底\ $AB$，$P$ 到\ $AB$ 的垂直距離大於\ $C$ 到\ $AB$ 的垂直距離的最大值，所以\ $\triangle ABP$ 的面積大於\ $\triangle ABC$ 的面積。 \\
因此，\ $\triangle ABP$ 的面積可能大於\ $\triangle ABC$ 的面積。',
  '將\ $C(0,7)$ 代入方程，我們可以得到
\begin{flalign*}
    7&=(0-4)^2+k\\
    7&=16+k\\
    k&=-9
\end{flalign*}
因此，頂點的座標為\ $(4,-9)$。 \\
當\ $P$ 為頂點時，$\triangle ABP$ 的面積最大。 \\
由於\ $\triangle ABP$ 與\ $\triangle ABC$ 有相同的底\ $AB$，$P$ 到\ $AB$ 的垂直距離大於\ $C$ 到\ $AB$ 的垂直距離的最大值，所以\ $\triangle ABP$ 的面積大於\ $\triangle ABC$ 的面積。 \\
因此，\ $\triangle ABP$ 的面積可能大於\ $\triangle ABC$ 的面積。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 93
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  93,
  'Chinese',
  '圖中，函數\ $y=(x-3)^2+k$ 與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交，與\ $y$ 軸在\ $C(0,3)$ 相交。如果\ $P$ 是函數上\ $x$ 軸下方的點，那麼\ $\triangle ABP$ 的面積是否可能大於\ $\triangle ABC$ 的面積？解釋你的答案。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-1/2*1.5,0) -- (7/2*1.5,0) node[right] {$x$};
  \draw[->] (0,-3/4*1.5) -- (0,10/4*1.5) node[above] {$y$};

  \draw[domain=-0.25:6.25, smooth, variable=\x, blue, thick] 
        plot ({\x/2*1.5}, {(\x-3)^2/4*1.5-1/4*1.5}) node[below right] {$y=(x-3)^2+k$};

  \filldraw [black] (2/2*1.5,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (4/2*1.5,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (0,8/4*1.5) circle (2pt) node[right] {$C(0,8)$};
\end{tikzpicture}}
\end{center}',
  '圖中，函數\ $y=(x-3)^2+k$ 與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交，與\ $y$ 軸在\ $C(0,3)$ 相交。如果\ $P$ 是函數上\ $x$ 軸下方的點，那麼\ $\triangle ABP$ 的面積是否可能大於\ $\triangle ABC$ 的面積？解釋你的答案。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-1/2*1.5,0) -- (7/2*1.5,0) node[right] {$x$};
  \draw[->] (0,-3/4*1.5) -- (0,10/4*1.5) node[above] {$y$};

  \draw[domain=-0.25:6.25, smooth, variable=\x, blue, thick] 
        plot ({\x/2*1.5}, {(\x-3)^2/4*1.5-1/4*1.5}) node[below right] {$y=(x-3)^2+k$};

  \filldraw [black] (2/2*1.5,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (4/2*1.5,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (0,8/4*1.5) circle (2pt) node[right] {$C(0,8)$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 93 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 93 AND language = 'Chinese'),
  '將\ $C(0,8)$ 代入方程，我們可以得到
\begin{flalign*}
    8&=(0-3)^2+k\\
    8&=9+k\\
    k&=-1
\end{flalign*}
因此，頂點的座標為\ $(3,-1)$。 \\
當\ $P$ 為頂點時，$\triangle ABP$ 的面積最大。 \\
由於\ $\triangle ABP$ 與\ $\triangle ABC$ 有相同的底\ $AB$，$C$ 到\ $AB$ 的垂直距離大於\ $P$ 到\ $AB$ 的垂直距離的最大值，所以\ $\triangle ABC$ 的面積大於\ $\triangle ABP$ 的面積。 \\
因此，\ $\triangle ABP$ 的面積不可能大於\ $\triangle ABC$ 的面積。',
  '將\ $C(0,8)$ 代入方程，我們可以得到
\begin{flalign*}
    8&=(0-3)^2+k\\
    8&=9+k\\
    k&=-1
\end{flalign*}
因此，頂點的座標為\ $(3,-1)$。 \\
當\ $P$ 為頂點時，$\triangle ABP$ 的面積最大。 \\
由於\ $\triangle ABP$ 與\ $\triangle ABC$ 有相同的底\ $AB$，$C$ 到\ $AB$ 的垂直距離大於\ $P$ 到\ $AB$ 的垂直距離的最大值，所以\ $\triangle ABC$ 的面積大於\ $\triangle ABP$ 的面積。 \\
因此，\ $\triangle ABP$ 的面積不可能大於\ $\triangle ABC$ 的面積。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 94
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  94,
  'Chinese',
  '圖中，函數\ $y=(x-6)^2+k$ 與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交，與\ $y$ 軸在\ $C(0,3)$ 相交。如果\ $P$ 是函數上\ $x$ 軸下方的點，那麼\ $\triangle ABP$ 的面積是否可能大於\ $\triangle ABC$ 的面積？解釋你的答案。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-1/2,0) -- (9/2+2,0) node[right] {$x$};
  \draw[->] (0,-3/8-1.5) -- (0,40/8-1.5) node[above] {$y$};

  \draw[domain=-0.25:12.25, smooth, variable=\x, blue, thick] 
        plot ({\x/2}, {(\x-6)^2/8-1/8-1.5}) node[below right] {$y=(x-6)^2+k$};

  \filldraw [black] (2.39445/2,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (9.60555/2,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (0,36/8-1.5) circle (2pt) node[right] {$C(0,35)$};
\end{tikzpicture}}
\end{center}',
  '圖中，函數\ $y=(x-6)^2+k$ 與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交，與\ $y$ 軸在\ $C(0,3)$ 相交。如果\ $P$ 是函數上\ $x$ 軸下方的點，那麼\ $\triangle ABP$ 的面積是否可能大於\ $\triangle ABC$ 的面積？解釋你的答案。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-1/2,0) -- (9/2+2,0) node[right] {$x$};
  \draw[->] (0,-3/8-1.5) -- (0,40/8-1.5) node[above] {$y$};

  \draw[domain=-0.25:12.25, smooth, variable=\x, blue, thick] 
        plot ({\x/2}, {(\x-6)^2/8-1/8-1.5}) node[below right] {$y=(x-6)^2+k$};

  \filldraw [black] (2.39445/2,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (9.60555/2,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (0,36/8-1.5) circle (2pt) node[right] {$C(0,35)$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 94 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 94 AND language = 'Chinese'),
  '將\ $C(0,35)$ 代入方程，我們可以得到
\begin{flalign*}
    35&=(0-6)^2+k\\
    35&=36+k\\
    k&=-1
\end{flalign*}
因此，頂點的座標為\ $(6,-1)$。 \\
當\ $P$ 為頂點時，$\triangle ABP$ 的面積最大。 \\
由於\ $\triangle ABP$ 與\ $\triangle ABC$ 有相同的底\ $AB$，$C$ 到\ $AB$ 的垂直距離大於\ $P$ 到\ $AB$ 的垂直距離的最大值，所以\ $\triangle ABC$ 的面積大於\ $\triangle ABP$ 的面積。 \\
因此，\ $\triangle ABP$ 的面積不可能大於\ $\triangle ABC$ 的面積。',
  '將\ $C(0,35)$ 代入方程，我們可以得到
\begin{flalign*}
    35&=(0-6)^2+k\\
    35&=36+k\\
    k&=-1
\end{flalign*}
因此，頂點的座標為\ $(6,-1)$。 \\
當\ $P$ 為頂點時，$\triangle ABP$ 的面積最大。 \\
由於\ $\triangle ABP$ 與\ $\triangle ABC$ 有相同的底\ $AB$，$C$ 到\ $AB$ 的垂直距離大於\ $P$ 到\ $AB$ 的垂直距離的最大值，所以\ $\triangle ABC$ 的面積大於\ $\triangle ABP$ 的面積。 \\
因此，\ $\triangle ABP$ 的面積不可能大於\ $\triangle ABC$ 的面積。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 95
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  95,
  'Chinese',
  '圖中，函數\ $y=(x-5)^2+k$ 與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交，與\ $y$ 軸在\ $C(0,3)$ 相交。如果\ $P$ 是函數上\ $x$ 軸下方的點，那麼\ $\triangle ABP$ 的面積是否可能大於\ $\triangle ABC$ 的面積？解釋你的答案。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-1/2,0) -- (11/2,0) node[right] {$x$};
  \draw[->] (0,-18/6) -- (0,12/6) node[above] {$y$};

  \draw[domain=-0.25:10.25, smooth, variable=\x, blue, thick] 
        plot ({\x/2}, {(\x-5)^2/6-16/6}) node[below right] {$y=(x-5)^2+k$};

  \filldraw [black] (1/2,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (9/2,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (0,9/6) circle (2pt) node[right] {$C(0,9)$};
\end{tikzpicture}}
\end{center}',
  '圖中，函數\ $y=(x-5)^2+k$ 與\ $x$ 軸分別在\ $A$ 和\ $B$ 相交，與\ $y$ 軸在\ $C(0,3)$ 相交。如果\ $P$ 是函數上\ $x$ 軸下方的點，那麼\ $\triangle ABP$ 的面積是否可能大於\ $\triangle ABC$ 的面積？解釋你的答案。
\begin{center}
\resizebox{7.5cm}{!}{
\begin{tikzpicture}
  \draw[->] (-1/2,0) -- (11/2,0) node[right] {$x$};
  \draw[->] (0,-18/6) -- (0,12/6) node[above] {$y$};

  \draw[domain=-0.25:10.25, smooth, variable=\x, blue, thick] 
        plot ({\x/2}, {(\x-5)^2/6-16/6}) node[below right] {$y=(x-5)^2+k$};

  \filldraw [black] (1/2,0) circle (2pt) node[below left] {$A$};
  \filldraw [black] (9/2,0) circle (2pt) node[below right] {$B$};
  \filldraw [black] (0,9/6) circle (2pt) node[right] {$C(0,9)$};
\end{tikzpicture}}
\end{center}'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 95 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 95 AND language = 'Chinese'),
  '將\ $C(0,9)$ 代入方程，我們可以得到
\begin{flalign*}
    9&=(0-5)^2+k\\
    9&=25+k\\
    k&=-16
\end{flalign*}
因此，頂點的座標為\ $(5,-16)$。 \\
當\ $P$ 為頂點時，$\triangle ABP$ 的面積最大。 \\
由於\ $\triangle ABP$ 與\ $\triangle ABC$ 有相同的底\ $AB$，$P$ 到\ $AB$ 的垂直距離大於\ $C$ 到\ $AB$ 的垂直距離的最大值，所以\ $\triangle ABP$ 的面積大於\ $\triangle ABC$ 的面積。 \\
因此，\ $\triangle ABP$ 的面積可能大於\ $\triangle ABC$ 的面積。',
  '將\ $C(0,9)$ 代入方程，我們可以得到
\begin{flalign*}
    9&=(0-5)^2+k\\
    9&=25+k\\
    k&=-16
\end{flalign*}
因此，頂點的座標為\ $(5,-16)$。 \\
當\ $P$ 為頂點時，$\triangle ABP$ 的面積最大。 \\
由於\ $\triangle ABP$ 與\ $\triangle ABC$ 有相同的底\ $AB$，$P$ 到\ $AB$ 的垂直距離大於\ $C$ 到\ $AB$ 的垂直距離的最大值，所以\ $\triangle ABP$ 的面積大於\ $\triangle ABC$ 的面積。 \\
因此，\ $\triangle ABP$ 的面積可能大於\ $\triangle ABC$ 的面積。'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 96
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  96,
  'Chinese',
  '一名守門員踢足球。球在\ $t$ 秒後的高度\ ($h$ 米) 為\ $h=33t-5t^2+2$。當球達到最大高度的一半時，求出\ $t$ 的值。(請將您的答案精確到\ 3 位有效數字。)',
  '一名守門員踢足球。球在\ $t$ 秒後的高度\ ($h$ 米) 為\ $h=33t-5t^2+2$。當球達到最大高度的一半時，求出\ $t$ 的值。(請將您的答案精確到\ 3 位有效數字。)'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 96 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 96 AND language = 'Chinese'),
  '\begin{flalign*}
    h&=33t-5t^2+2\\
    &=-5t^2+33t+2\\
    &=-5\left(t^2-\frac{33}{5}t\right)+2\\
    &=-5\left(t^2-2(t)\left(\frac{33}{10}\right)+\left(\frac{33}{10}\right)^2-\left(\frac{33}{10}\right)^2\right)+2\\
    &=-5\left(t-\frac{33}{10}\right)^2+5\left(\frac{33}{10}\right)^2+2\\
    &=-5\left(t-\frac{33}{10}\right)^2+\frac{1089}{20}+2\\
    &=-5\left(t-\frac{33}{10}\right)^2+\frac{1129}{20}
\end{flalign*}
因此，球將達到最大高度\ $\displaystyle \frac{1129}{20}$。 \\
將\ $\displaystyle h=\frac{1129}{40}$ 代入方程，我們可以得到
\begin{flalign*}
    \frac{1129}{40}&=33t-5t^2+2\\
    -5t^2+33t-\frac{1049}{40}&=0\\
    -80t^2+1320t-1049&=0\\
    t&=\frac{-1320\pm \sqrt{1320^2-4(-80)(-1049)}}{2(-80)}\\
    t&=0.924\text{ 或\ }5.68\text{ (精確到\ 3 位有效數字)}
\end{flalign*}',
  '\begin{flalign*}
    h&=33t-5t^2+2\\
    &=-5t^2+33t+2\\
    &=-5\left(t^2-\frac{33}{5}t\right)+2\\
    &=-5\left(t^2-2(t)\left(\frac{33}{10}\right)+\left(\frac{33}{10}\right)^2-\left(\frac{33}{10}\right)^2\right)+2\\
    &=-5\left(t-\frac{33}{10}\right)^2+5\left(\frac{33}{10}\right)^2+2\\
    &=-5\left(t-\frac{33}{10}\right)^2+\frac{1089}{20}+2\\
    &=-5\left(t-\frac{33}{10}\right)^2+\frac{1129}{20}
\end{flalign*}
因此，球將達到最大高度\ $\displaystyle \frac{1129}{20}$。 \\
將\ $\displaystyle h=\frac{1129}{40}$ 代入方程，我們可以得到
\begin{flalign*}
    \frac{1129}{40}&=33t-5t^2+2\\
    -5t^2+33t-\frac{1049}{40}&=0\\
    -80t^2+1320t-1049&=0\\
    t&=\frac{-1320\pm \sqrt{1320^2-4(-80)(-1049)}}{2(-80)}\\
    t&=0.924\text{ 或\ }5.68\text{ (精確到\ 3 位有效數字)}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 97
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  97,
  'Chinese',
  '一名籃球運動員將球投向籃框。球在\ $t$ 秒後的高度\ ($h$ 米) 為\ $h=26t-5t^2-2$。當籃球達到最大高度的一半時，求出\ $t$ 的值。(請將您的答案精確到\ 3 位有效數字。)',
  '一名籃球運動員將球投向籃框。球在\ $t$ 秒後的高度\ ($h$ 米) 為\ $h=26t-5t^2-2$。當籃球達到最大高度的一半時，求出\ $t$ 的值。(請將您的答案精確到\ 3 位有效數字。)'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 97 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 97 AND language = 'Chinese'),
  '\begin{flalign*}
    h&=26t-5t^2-2\\
    &=-5t^2+26t-2\\
    &=-5\left(t^2-\frac{26}{5}t\right)-2\\
    &=-5\left(t^2-2(t)\left(\frac{13}{5}\right)+\left(\frac{13}{5}\right)^2-\left(\frac{13}{5}\right)^2\right)-2\\
    &=-5\left(t-\frac{13}{5}\right)^2+5\left(\frac{13}{5}\right)^2-2\\
    &=-5\left(t-\frac{13}{5}\right)^2+\frac{169}{5}-2\\
    &=-5\left(t-\frac{13}{5}\right)^2+\frac{159}{5}
\end{flalign*}
因此，球將達到最大高度\ $\displaystyle \frac{159}{5}$。 \\
將\ $\displaystyle h=\frac{159}{10}$ 代入方程，我們可以得到
\begin{flalign*}
    \frac{159}{10}&=26t-5t^2-2\\
    -5t^2+26t-\frac{179}{10}&=0\\
    -50t^2+260t-179&=0\\
    t&=\frac{-260\pm \sqrt{260^2-4(-50)(-179)}}{2(-50)}\\
    t&=0.817\text{ 或\ }4.38\text{ (精確到\ 3 位有效數字)}
\end{flalign*}',
  '\begin{flalign*}
    h&=26t-5t^2-2\\
    &=-5t^2+26t-2\\
    &=-5\left(t^2-\frac{26}{5}t\right)-2\\
    &=-5\left(t^2-2(t)\left(\frac{13}{5}\right)+\left(\frac{13}{5}\right)^2-\left(\frac{13}{5}\right)^2\right)-2\\
    &=-5\left(t-\frac{13}{5}\right)^2+5\left(\frac{13}{5}\right)^2-2\\
    &=-5\left(t-\frac{13}{5}\right)^2+\frac{169}{5}-2\\
    &=-5\left(t-\frac{13}{5}\right)^2+\frac{159}{5}
\end{flalign*}
因此，球將達到最大高度\ $\displaystyle \frac{159}{5}$。 \\
將\ $\displaystyle h=\frac{159}{10}$ 代入方程，我們可以得到
\begin{flalign*}
    \frac{159}{10}&=26t-5t^2-2\\
    -5t^2+26t-\frac{179}{10}&=0\\
    -50t^2+260t-179&=0\\
    t&=\frac{-260\pm \sqrt{260^2-4(-50)(-179)}}{2(-50)}\\
    t&=0.817\text{ 或\ }4.38\text{ (精確到\ 3 位有效數字)}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 98
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  98,
  'Chinese',
  '一枚煙花發射後，其高度\ ($h$ 米) 在\ $t$ 秒後為\ $h=14t-5t^2+1$。當煙花達到最大高度的一半時，求出\ $t$ 的值。(請將您的答案精確到\ 3 位有效數字。)',
  '一枚煙花發射後，其高度\ ($h$ 米) 在\ $t$ 秒後為\ $h=14t-5t^2+1$。當煙花達到最大高度的一半時，求出\ $t$ 的值。(請將您的答案精確到\ 3 位有效數字。)'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 98 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 98 AND language = 'Chinese'),
  '\begin{flalign*}
    h&=14t-5t^2+1\\
    &=-5t^2+14t+1\\
    &=-5\left(t^2-\frac{14}{5}t\right)+1\\
    &=-5\left(t^2-2(t)\left(\frac{7}{5}\right)+\left(\frac{7}{5}\right)^2-\left(\frac{7}{5}\right)^2\right)+1\\
    &=-5\left(t-\frac{7}{5}\right)^2+5\left(\frac{7}{5}\right)^2+1\\
    &=-5\left(t-\frac{7}{5}\right)^2+\frac{49}{5}+1\\
    &=-5\left(t-\frac{7}{5}\right)^2+\frac{54}{5}
\end{flalign*}
因此，煙花將達到最大高度\ $\displaystyle \frac{54}{5}$。 \\
將\ $\displaystyle h=\frac{27}{5}$ 代入方程，我們可以得到
\begin{flalign*}
    \frac{27}{5}&=14t-5t^2+1\\
    -5t^2+14t-\frac{22}{5}&=0\\
    -25t^2+70t-22&=0\\
    t&=\frac{-70\pm \sqrt{70^2-4(-25)(-22)}}{2(-25)}\\
    t&=0.361\text{ 或\ }2.44\text{ (精確到\ 3 位有效數字)}
\end{flalign*}',
  '\begin{flalign*}
    h&=14t-5t^2+1\\
    &=-5t^2+14t+1\\
    &=-5\left(t^2-\frac{14}{5}t\right)+1\\
    &=-5\left(t^2-2(t)\left(\frac{7}{5}\right)+\left(\frac{7}{5}\right)^2-\left(\frac{7}{5}\right)^2\right)+1\\
    &=-5\left(t-\frac{7}{5}\right)^2+5\left(\frac{7}{5}\right)^2+1\\
    &=-5\left(t-\frac{7}{5}\right)^2+\frac{49}{5}+1\\
    &=-5\left(t-\frac{7}{5}\right)^2+\frac{54}{5}
\end{flalign*}
因此，煙花將達到最大高度\ $\displaystyle \frac{54}{5}$。 \\
將\ $\displaystyle h=\frac{27}{5}$ 代入方程，我們可以得到
\begin{flalign*}
    \frac{27}{5}&=14t-5t^2+1\\
    -5t^2+14t-\frac{22}{5}&=0\\
    -25t^2+70t-22&=0\\
    t&=\frac{-70\pm \sqrt{70^2-4(-25)(-22)}}{2(-25)}\\
    t&=0.361\text{ 或\ }2.44\text{ (精確到\ 3 位有效數字)}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 99
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  99,
  'Chinese',
  '一名高爾夫球手擊打高爾夫球。球在\ $t$ 秒後的高度\ ($h$ 米) 為\ $h=16t-5t^2-1$。當球達到最大高度的一半時，求\ $t$ 的值。(請將您的答案精確到\ 3 位有效數字。)',
  '一名高爾夫球手擊打高爾夫球。球在\ $t$ 秒後的高度\ ($h$ 米) 為\ $h=16t-5t^2-1$。當球達到最大高度的一半時，求\ $t$ 的值。(請將您的答案精確到\ 3 位有效數字。)'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 99 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 99 AND language = 'Chinese'),
  '\begin{flalign*}
    h&=16t-5t^2-1\\
    &=-5t^2+16t-1\\
    &=-5\left(t^2-\frac{16}{5}t\right)-1\\
    &=-5\left(t^2-2(t)\left(\frac{8}{5}\right)+\left(\frac{8}{5}\right)^2-\left(\frac{8}{5}\right)^2\right)-1\\
    &=-5\left(t-\frac{8}{5}\right)^2+5\left(\frac{8}{5}\right)^2-1\\
    &=-5\left(t-\frac{8}{5}\right)^2+\frac{64}{5}-1\\
    &=-5\left(t-\frac{8}{5}\right)^2+\frac{59}{5}
\end{flalign*}
因此，球將達到最大高度\ $\displaystyle \frac{59}{5}$。 \\
將\ $\displaystyle h=\frac{59}{10}$ 代入方程，我們可以得到
\begin{flalign*}
    \frac{59}{10}&=16t-5t^2-1\\
    -5t^2+16t-\frac{69}{10}&=0\\
    -50t^2+160t-69&=0\\
    t&=\frac{-160 \pm \sqrt{160^2-4(-50)(-69)}}{2(-50)}\\
    t&=0.514\text{ 或\ }2.69\text{ (精確到\ 3 位有效數字)}
\end{flalign*}',
  '\begin{flalign*}
    h&=16t-5t^2-1\\
    &=-5t^2+16t-1\\
    &=-5\left(t^2-\frac{16}{5}t\right)-1\\
    &=-5\left(t^2-2(t)\left(\frac{8}{5}\right)+\left(\frac{8}{5}\right)^2-\left(\frac{8}{5}\right)^2\right)-1\\
    &=-5\left(t-\frac{8}{5}\right)^2+5\left(\frac{8}{5}\right)^2-1\\
    &=-5\left(t-\frac{8}{5}\right)^2+\frac{64}{5}-1\\
    &=-5\left(t-\frac{8}{5}\right)^2+\frac{59}{5}
\end{flalign*}
因此，球將達到最大高度\ $\displaystyle \frac{59}{5}$。 \\
將\ $\displaystyle h=\frac{59}{10}$ 代入方程，我們可以得到
\begin{flalign*}
    \frac{59}{10}&=16t-5t^2-1\\
    -5t^2+16t-\frac{69}{10}&=0\\
    -50t^2+160t-69&=0\\
    t&=\frac{-160 \pm \sqrt{160^2-4(-50)(-69)}}{2(-50)}\\
    t&=0.514\text{ 或\ }2.69\text{ (精確到\ 3 位有效數字)}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入中文问题 100
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs'),
  100,
  'Chinese',
  '一個弓箭手射出一支箭，弓箭在\ $t$ 秒後的高度\ ($h$ 米) 為\ $h=32t-5t^2$。當弓箭達到最大高度的一半時，找出\ $t$ 的值。(請將您的答案精確到\ 3 位有效數字。)',
  '一個弓箭手射出一支箭，弓箭在\ $t$ 秒後的高度\ ($h$ 米) 為\ $h=32t-5t^2$。當弓箭達到最大高度的一半時，找出\ $t$ 的值。(請將您的答案精確到\ 3 位有效數字。)'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 100 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'FunctionsAndGraphs')
   AND question_number = 100 AND language = 'Chinese'),
  '\begin{flalign*}
    h&=32t-5t^2\\
    &=-5t^2+32t\\
    &=-5\left(t^2-\frac{32}{5}t\right)\\
    &=-5\left(t^2-2(t)\left(\frac{16}{5}\right)+\left(\frac{16}{5}\right)^2-\left(\frac{16}{5}\right)^2\right)\\
    &=-5\left(t-\frac{16}{5}\right)^2+5\left(\frac{16}{5}\right)^2\\
    &=-5\left(t-\frac{16}{5}\right)^2+\frac{256}{5}
\end{flalign*}
因此，弓箭將達到最大高度\ $\displaystyle \frac{256}{5}$。 \\
將\ $\displaystyle h=\frac{128}{5}$ 代入方程，我們可以得到
\begin{flalign*}
    \frac{128}{5}&=32t-5t^2\\
    -5t^2+32t-\frac{128}{5}&=0\\
    -25t^2+160t-128&=0\\
    t&=\frac{-160\pm \sqrt{160^2-4(-25)(-128)}}{2(-25)}\\
    t&=0.937\text{ 或\ }5.46\text{ (精確到\ 3 位有效數字)}
\end{flalign*}',
  '\begin{flalign*}
    h&=32t-5t^2\\
    &=-5t^2+32t\\
    &=-5\left(t^2-\frac{32}{5}t\right)\\
    &=-5\left(t^2-2(t)\left(\frac{16}{5}\right)+\left(\frac{16}{5}\right)^2-\left(\frac{16}{5}\right)^2\right)\\
    &=-5\left(t-\frac{16}{5}\right)^2+5\left(\frac{16}{5}\right)^2\\
    &=-5\left(t-\frac{16}{5}\right)^2+\frac{256}{5}
\end{flalign*}
因此，弓箭將達到最大高度\ $\displaystyle \frac{256}{5}$。 \\
將\ $\displaystyle h=\frac{128}{5}$ 代入方程，我們可以得到
\begin{flalign*}
    \frac{128}{5}&=32t-5t^2\\
    -5t^2+32t-\frac{128}{5}&=0\\
    -25t^2+160t-128&=0\\
    t&=\frac{-160\pm \sqrt{160^2-4(-25)(-128)}}{2(-25)}\\
    t&=0.937\text{ 或\ }5.46\text{ (精確到\ 3 位有效數字)}
\end{flalign*}'
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入主题: More About Polynomials
INSERT INTO topics (name, display_name, chapter)
VALUES ('MoreAboutPolynomials', 'More About Polynomials', 'Compulsory Part Ch.1-4')
ON CONFLICT (name) DO NOTHING;

-- 插入英文问题 1
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  1,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 1 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 1 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 2
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  2,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 2 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 2 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 3
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  3,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 3 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 3 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 4
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  4,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 4 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 4 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 5
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  5,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 5 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 5 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 6
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  6,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 6 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 6 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 7
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  7,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 8
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  8,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 9
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  9,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 10
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  10,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 10 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 10 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 11
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  11,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 11 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 11 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 12
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  12,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 12 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 12 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 13
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  13,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 13 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 13 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 14
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  14,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 14 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 14 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 15
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  15,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 15 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 15 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 16
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  16,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 16 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 16 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 17
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  17,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 17 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 17 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 18
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  18,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 18 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 18 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 19
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  19,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 19 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 19 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 20
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  20,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 20 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 20 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 21
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  21,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 21 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 21 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 22
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  22,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 22 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 22 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 23
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  23,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 23 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 23 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 24
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  24,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 24 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 24 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 25
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  25,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 25 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 25 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 26
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  26,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 26 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 26 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 27
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  27,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 27 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 27 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 28
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  28,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 28 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 28 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 29
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  29,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 29 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 29 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 30
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  30,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 30 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 30 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 31
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  31,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 31 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 31 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 32
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  32,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 32 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 32 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 33
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  33,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 33 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 33 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 34
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  34,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 34 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 34 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 35
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  35,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 35 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 35 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 36
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  36,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 36 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 36 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 37
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  37,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 37 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 37 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 38
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  38,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 38 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 38 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 39
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  39,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 39 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 39 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 40
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  40,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 40 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 40 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 41
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  41,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 41 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 41 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 42
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  42,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 42 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 42 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 43
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  43,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 43 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 43 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 44
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  44,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 44 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 44 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 45
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  45,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 45 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 45 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 46
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  46,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 46 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 46 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 47
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  47,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 47 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 47 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 48
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  48,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 48 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 48 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 49
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  49,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 49 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 49 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 50
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  50,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 50 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 50 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 51
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  51,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 51 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 51 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 52
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  52,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 52 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 52 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 53
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  53,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 53 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 53 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 54
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  54,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 54 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 54 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 55
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  55,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 55 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 55 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 56
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  56,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 56 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 56 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 57
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  57,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 57 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 57 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 58
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  58,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 58 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 58 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 59
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  59,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 59 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 59 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 60
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  60,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 60 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 60 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 61
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  61,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 61 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 61 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 62
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  62,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 62 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 62 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 63
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  63,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 63 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 63 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 64
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  64,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 64 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 64 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 65
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  65,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 65 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 65 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 66
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  66,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 66 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 66 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 67
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  67,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 67 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 67 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 68
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  68,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 68 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 68 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 69
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  69,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 69 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 69 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 70
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  70,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 70 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 70 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 71
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  71,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 71 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 71 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 72
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  72,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 72 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 72 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 73
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  73,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 73 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 73 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 74
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  74,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 74 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 74 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 75
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  75,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 75 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 75 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 76
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  76,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 76 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 76 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 77
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  77,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 77 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 77 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 78
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  78,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 78 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 78 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 79
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  79,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 79 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 79 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 80
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  80,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 80 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 80 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 81
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  81,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 81 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 81 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 82
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  82,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 82 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 82 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 83
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  83,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 83 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 83 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 84
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  84,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 84 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 84 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 85
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  85,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 85 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 85 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 86
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  86,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 86 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 86 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 87
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  87,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 87 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 87 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 88
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  88,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 88 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 88 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 89
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  89,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 89 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 89 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 90
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  90,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 90 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 90 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 91
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  91,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 91 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 91 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 92
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  92,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 92 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 92 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 93
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  93,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 93 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 93 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 94
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  94,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 94 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 94 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 95
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  95,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 95 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 95 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 96
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  96,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 96 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 96 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 97
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  97,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 97 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 97 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 98
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  98,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 98 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 98 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 99
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  99,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 99 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 99 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入英文问题 100
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials'),
  100,
  'English',
  '',
  ''
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 100 的答案
INSERT INTO answers (question_id, content, latex_content)
VALUES (
  (SELECT id FROM questions WHERE topic_id = (SELECT id FROM topics WHERE name = 'MoreAboutPolynomials')
   AND question_number = 100 AND language = 'English'),
  '',
  ''
)
ON CONFLICT (question_id) DO NOTHING;

-- 插入主题: Quadratic Equations In One Unknown
INSERT INTO topics (name, display_name, chapter)
VALUES ('QuadraticEquationsInOneUnknown', 'Quadratic Equations In One Unknown', 'Compulsory Part Ch.1-4')
ON CONFLICT (name) DO NOTHING;

-- 插入英文问题 1
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  1,
  'English',
  'Solve $(3x-1)(x+2)=2x+5$.',
  'Solve $(3x-1)(x+2)=2x+5$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 2
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  2,
  'English',
  'Solve $(x+5)(x-3)=2x+10$.',
  'Solve $(x+5)(x-3)=2x+10$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 3
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  3,
  'English',
  'Solve $(x-2)(3x+4)=2x-8$.',
  'Solve $(x-2)(3x+4)=2x-8$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 4
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  4,
  'English',
  'Solve $(x+7)(x-4)=2x+14$.',
  'Solve $(x+7)(x-4)=2x+14$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 5
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  5,
  'English',
  'Solve $(2x-1)(x+3)=x+7$.',
  'Solve $(2x-1)(x+3)=x+7$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 6
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  6,
  'English',
  'Solve $(5x-2)^2=(2x+1)(10x-4)$.',
  'Solve $(5x-2)^2=(2x+1)(10x-4)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 7
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  7,
  'English',
  'Solve $(4x+2)^2=(3x+1)(6x+4)$.',
  'Solve $(4x+2)^2=(3x+1)(6x+4)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 8
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  8,
  'English',
  'Solve $(5x+1)^2=(2x+1)(10x+1)$.',
  'Solve $(5x+1)^2=(2x+1)(10x+1)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 9
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  9,
  'English',
  'Solve $(x-3)^2-2(3-x)-8=0$.',
  'Solve $(x-3)^2-2(3-x)-8=0$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 10
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  10,
  'English',
  'Solve $(x-2)^2+4(x-2)-12=0$.',
  'Solve $(x-2)^2+4(x-2)-12=0$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 11
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  11,
  'English',
  'Solve $(x-1)^2-6(1-x)+8=0$.',
  'Solve $(x-1)^2-6(1-x)+8=0$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 12
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  12,
  'English',
  'Solve $(x-4)^2-3(4-x)-18=0$.',
  'Solve $(x-4)^2-3(4-x)-18=0$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 13
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  13,
  'English',
  'Solve $(x-10)^2-6(10-x)+9=0$.',
  'Solve $(x-10)^2-6(10-x)+9=0$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 14
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  14,
  'English',
  'Solve $(x-8)^2-3(8-x)-18=0$.',
  'Solve $(x-8)^2-3(8-x)-18=0$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 15
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  15,
  'English',
  'Solve $3(x+2)^2-27=0$.',
  'Solve $3(x+2)^2-27=0$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 16
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  16,
  'English',
  'Solve $(2x-3)^2=(x+4)^2$.',
  'Solve $(2x-3)^2=(x+4)^2$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 17
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  17,
  'English',
  'Solve $(2x+1)^2=(3x-4)^2$.',
  'Solve $(2x+1)^2=(3x-4)^2$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 18
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  18,
  'English',
  'Solve $\displaystyle (x-2)\left(x+\frac{3}{4}\right)-2=3(x-1)$.',
  'Solve $\displaystyle (x-2)\left(x+\frac{3}{4}\right)-2=3(x-1)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 19
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  19,
  'English',
  'Solve $\displaystyle (x-2)\left(x+\frac{1}{2}\right)-1=2(x-1)$.',
  'Solve $\displaystyle (x-2)\left(x+\frac{1}{2}\right)-1=2(x-1)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 20
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  20,
  'English',
  'Solve $\displaystyle (x+2)\left(x-\frac{1}{3}\right)-2=4(x+1)$.',
  'Solve $\displaystyle (x+2)\left(x-\frac{1}{3}\right)-2=4(x+1)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 21
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  21,
  'English',
  'The sum of the digits of a 2‑digit number is 9, and when the digits are reversed, the number decreases by 19. Find the number.',
  'The sum of the digits of a 2‑digit number is 9, and when the digits are reversed, the number decreases by 19. Find the number.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 22
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  22,
  'English',
  'The tens digit of a 2‑digit number is 2 less than the units digit. If the number is 4 times the sum of its digits, find the number.',
  'The tens digit of a 2‑digit number is 2 less than the units digit. If the number is 4 times the sum of its digits, find the number.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 23
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  23,
  'English',
  'Find the 2‑digit number such that the sum of its digits is 11 and the difference between the number and its reversed form is 27, where the number is larger than its reversed form.',
  'Find the 2‑digit number such that the sum of its digits is 11 and the difference between the number and its reversed form is 27, where the number is larger than its reversed form.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 24
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  24,
  'English',
  'Find the 2‑digit number, where the number for the tens digit is larger than the units digit, such that the difference between its digits is 4 and the sum of its digits is 10.',
  'Find the 2‑digit number, where the number for the tens digit is larger than the units digit, such that the difference between its digits is 4 and the sum of its digits is 10.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 25
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  25,
  'English',
  'When 9 is added to a 2‑digit number, the resulting number equals the reversal of its digits. If the product of the digits is 20, find the number.',
  'When 9 is added to a 2‑digit number, the resulting number equals the reversal of its digits. If the product of the digits is 20, find the number.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 26
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  26,
  'English',
  'Find the 2‑digit number with a digit sum of 11 such that when its digits are reversed, the new number is 9 less than the original.',
  'Find the 2‑digit number with a digit sum of 11 such that when its digits are reversed, the new number is 9 less than the original.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 27
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  27,
  'English',
  'Find the 2‑digit number such that the sum of the number and its reversal is 121, where the number is larger than its reversal, and the difference between its digits is 3.',
  'Find the 2‑digit number such that the sum of the number and its reversal is 121, where the number is larger than its reversal, and the difference between its digits is 3.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 28
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  28,
  'English',
  'Find the 2‑digit number such that the tens digit is 3 less than the units digit and the product of its digits is 54.',
  'Find the 2‑digit number such that the tens digit is 3 less than the units digit and the product of its digits is 54.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 29
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  29,
  'English',
  'Find the 2‑digit number such that the tens digit is 3 less than the units digit and the product of its digits is 18.',
  'Find the 2‑digit number such that the tens digit is 3 less than the units digit and the product of its digits is 18.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 30
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  30,
  'English',
  'Find the 2‑digit number such that reversing its digits produces a number that is 9 greater than the original number and the product of its digits is 12.',
  'Find the 2‑digit number such that reversing its digits produces a number that is 9 greater than the original number and the product of its digits is 12.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 31
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  31,
  'English',
  'Ms. Chan is now $x$ years old. Her current age the square of her age 20 years ago. Find her current age.',
  'Ms. Chan is now $x$ years old. Her current age the square of her age 20 years ago. Find her current age.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 32
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  32,
  'English',
  'Mr. Wong is now $x$ years old. His current age is the square of his age six years ago. Find his current age.',
  'Mr. Wong is now $x$ years old. His current age is the square of his age six years ago. Find his current age.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 33
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  33,
  'English',
  'Mrs. Li is now $x$ years old. Her current age is the square of her age twelve years ago. Find her current age.',
  'Mrs. Li is now $x$ years old. Her current age is the square of her age twelve years ago. Find her current age.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 34
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  34,
  'English',
  'Mr. Chen is now $x$ years old. His current age is the square of his age 30 years ago. Find his current age.',
  'Mr. Chen is now $x$ years old. His current age is the square of his age 30 years ago. Find his current age.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 35
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  35,
  'English',
  'Mrs. Lee is now $x$ years old. Her current age is the square of her age 42 years ago. Find her current age.',
  'Mrs. Lee is now $x$ years old. Her current age is the square of her age 42 years ago. Find her current age.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 36
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  36,
  'English',
  'Mr. Wong is now $x$ years old. His current age is the square of his age 56 years ago. Find his current age.',
  'Mr. Wong is now $x$ years old. His current age is the square of his age 56 years ago. Find his current age.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 37
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  37,
  'English',
  'Ms. Yeung is now $x$ years old. Her current age is the square of her age 72 years ago. Find her current age.',
  'Ms. Yeung is now $x$ years old. Her current age is the square of her age 72 years ago. Find her current age.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 38
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  38,
  'English',
  'Mrs. Ho is now $x$ years old. Twice of her current age is the square of her age four years ago. Find her current age.',
  'Mrs. Ho is now $x$ years old. Twice of her current age is the square of her age four years ago. Find her current age.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 39
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  39,
  'English',
  'Mr. Tang is now $x$ years old. Twice of his current age is the square of his age twelve years ago. Find his current age.',
  'Mr. Tang is now $x$ years old. Twice of his current age is the square of his age twelve years ago. Find his current age.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 40
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  40,
  'English',
  'Ms. Ng is now $x$ years old. Three times of her current age is the square of her age six years ago. Find her current age.',
  'Ms. Ng is now $x$ years old. Three times of her current age is the square of her age six years ago. Find her current age.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 41
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  41,
  'English',
  'When the digits of a two‑digit number are reversed, the new number is 27 less than the original. If the sum of the digits is 9, find the number.',
  'When the digits of a two‑digit number are reversed, the new number is 27 less than the original. If the sum of the digits is 9, find the number.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 42
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  42,
  'English',
  'The difference between two positive integers is 4 and the difference between their squares is 56. Find the integers.',
  'The difference between two positive integers is 4 and the difference between their squares is 56. Find the integers.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 43
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  43,
  'English',
  'The difference between the squares of two consecutive multiples of 4 is 144. Find the multiples.',
  'The difference between the squares of two consecutive multiples of 4 is 144. Find the multiples.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 44
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  44,
  'English',
  'Find two consecutive positive odd integers whose squares add up to 130.',
  'Find two consecutive positive odd integers whose squares add up to 130.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 45
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  45,
  'English',
  'The sum of two numbers is 15 and their product is 56. Find the numbers.',
  'The sum of two numbers is 15 and their product is 56. Find the numbers.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 46
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  46,
  'English',
  'The ratio of two integers is $4:5$, and the ratio of their difference to their product is $1:20$. Find the integers.',
  'The ratio of two integers is $4:5$, and the ratio of their difference to their product is $1:20$. Find the integers.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 47
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  47,
  'English',
  'The ratio of two positive integers is $5:7$. If the difference of their squares is 96, find the integers.',
  'The ratio of two positive integers is $5:7$. If the difference of their squares is 96, find the integers.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 48
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  48,
  'English',
  'The ratio of two integers is $4:11$. If 4 is added to the smaller number and subtracted from the larger number, the resulting ratio is $1:2$. Find the numbers.',
  'The ratio of two integers is $4:11$. If 4 is added to the smaller number and subtracted from the larger number, the resulting ratio is $1:2$. Find the numbers.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 49
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  49,
  'English',
  'The ratio of two numbers is $2:5$. If three times the smaller number subtracted from twice the larger is 20, find the numbers.',
  'The ratio of two numbers is $2:5$. If three times the smaller number subtracted from twice the larger is 20, find the numbers.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 50
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  50,
  'English',
  'The ratio of two integers is $7:9$ and their sum is 64. Find the numbers.',
  'The ratio of two integers is $7:9$ and their sum is 64. Find the numbers.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 51
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  51,
  'English',
  'A 100 cm long wire is cut into two parts. Each part is bent to form a square. If the difference between the areas of the two squares is $225\text{ cm}^2$, find the length of the piece used to form the larger square.',
  'A 100 cm long wire is cut into two parts. Each part is bent to form a square. If the difference between the areas of the two squares is $225\text{ cm}^2$, find the length of the piece used to form the larger square.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 52
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  52,
  'English',
  'A piece of wire 84 cm long is cut into two parts. Each part is bent to form a square. If the total area of the two squares is $281\text{ cm}^2$, find the length of the longer piece of wire.',
  'A piece of wire 84 cm long is cut into two parts. Each part is bent to form a square. If the total area of the two squares is $281\text{ cm}^2$, find the length of the longer piece of wire.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 53
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  53,
  'English',
  'A piece of wire 64 cm long is cut into two parts. Each part is bent to form a square. If the area of the square formed from one part is nine times the area of the square formed from the other, find the lengths of the two pieces.',
  'A piece of wire 64 cm long is cut into two parts. Each part is bent to form a square. If the area of the square formed from one part is nine times the area of the square formed from the other, find the lengths of the two pieces.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 54
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  54,
  'English',
  'A piece of wire 150 cm long is cut into two parts. Each part is bent to form a square. If the area of the square made from one part is four times the area of the square made from the other part, find the length of the longer piece.',
  'A piece of wire 150 cm long is cut into two parts. Each part is bent to form a square. If the area of the square made from one part is four times the area of the square made from the other part, find the length of the longer piece.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 55
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  55,
  'English',
  'A 100 cm long wire is divided into two parts, each of which is bent to form a square. If the difference between their perimeters is 20 cm, find the area of the larger square.',
  'A 100 cm long wire is divided into two parts, each of which is bent to form a square. If the difference between their perimeters is 20 cm, find the area of the larger square.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 56
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  56,
  'English',
  'A 100 cm long wire is cut into two parts. One part is bent to form a square, and the other to form a rectangle whose length is twice its width. If the area of the rectangle is twice the area of the square, find the length of the wire used to form the square.',
  'A 100 cm long wire is cut into two parts. One part is bent to form a square, and the other to form a rectangle whose length is twice its width. If the area of the rectangle is twice the area of the square, find the length of the wire used to form the square.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 57
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  57,
  'English',
  'A 150 cm long wire is cut into two parts. One part is bent to form a square, and the other to form a rectangle whose length is three times its width. If the area of the rectangle is three times the area of the square, find the length of the wire used for the square.',
  'A 150 cm long wire is cut into two parts. One part is bent to form a square, and the other to form a rectangle whose length is three times its width. If the area of the rectangle is three times the area of the square, find the length of the wire used for the square.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 58
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  58,
  'English',
  'A 180 cm long wire is divided into two parts. One piece is 20 cm longer than the other. If the longer piece is bent into a square, what is the perimeter of that square?',
  'A 180 cm long wire is divided into two parts. One piece is 20 cm longer than the other. If the longer piece is bent into a square, what is the perimeter of that square?'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 59
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  59,
  'English',
  'A 160 cm long wire is cut so that one piece is 40 cm longer than the other. If the longer piece is bent into a square, what is its area?',
  'A 160 cm long wire is cut so that one piece is 40 cm longer than the other. If the longer piece is bent into a square, what is its area?'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 60
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  60,
  'English',
  'A 200 cm long wire is divided into two parts. One part is bent to form a square and the other to form a rectangle. If the perimeter of the rectangle is three times the perimeter of the square, find the length of the wire used for the rectangle.',
  'A 200 cm long wire is divided into two parts. One part is bent to form a square and the other to form a rectangle. If the perimeter of the rectangle is three times the perimeter of the square, find the length of the wire used for the rectangle.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 61
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  61,
  'English',
  'The quadratic equation $16+px+9x^2=0$ has one double real root. Find the value(s) of $p$.',
  'The quadratic equation $16+px+9x^2=0$ has one double real root. Find the value(s) of $p$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 62
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  62,
  'English',
  'The quadratic equation $kx+36+x^2=0$ has one double real root. Find the value(s) of $k$.',
  'The quadratic equation $kx+36+x^2=0$ has one double real root. Find the value(s) of $k$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 63
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  63,
  'English',
  'The quadratic equation $4+49x^2+ax=0$ has one double real root. Find the value(s) of $a$.',
  'The quadratic equation $4+49x^2+ax=0$ has one double real root. Find the value(s) of $a$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 64
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  64,
  'English',
  'The quadratic equation $25x^2+bx=-1$ has one double real root. Find the value(s) of $b$.',
  'The quadratic equation $25x^2+bx=-1$ has one double real root. Find the value(s) of $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 65
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  65,
  'English',
  'The quadratic equation $cx+8+2x^2=0$ has one double real root. Find the value(s) of $c$.',
  'The quadratic equation $cx+8+2x^2=0$ has one double real root. Find the value(s) of $c$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 66
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  66,
  'English',
  'The quadratic equation $(4m+1)x+(m^2+1)x^2+4=0$ has two distinct real roots. Find the range of values of $m$.',
  'The quadratic equation $(4m+1)x+(m^2+1)x^2+4=0$ has two distinct real roots. Find the range of values of $m$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 67
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  67,
  'English',
  'The quadratic equation $4x+(a+3)x^2=5$ has two distinct real roots. Find the range of values of $a$.',
  'The quadratic equation $4x+(a+3)x^2=5$ has two distinct real roots. Find the range of values of $a$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 68
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  68,
  'English',
  'The quadratic equation $kx^2+(k+1)x+k-4=0$ has two distinct real roots. Find the range of values of $k$.',
  'The quadratic equation $kx^2+(k+1)x+k-4=0$ has two distinct real roots. Find the range of values of $k$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 69
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  69,
  'English',
  'The quadratic equation $bx^2+2b+(3-b)x=1$ has two distinct real roots. Find the range of values of $b$.',
  'The quadratic equation $bx^2+2b+(3-b)x=1$ has two distinct real roots. Find the range of values of $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 70
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  70,
  'English',
  'The quadratic equation $x^2+5x=2c-3$ has two distinct real roots. Find the range of values of $c$.',
  'The quadratic equation $x^2+5x=2c-3$ has two distinct real roots. Find the range of values of $c$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 71
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  71,
  'English',
  'The quadratic equation $2x^2+3x=4k$ has no real roots. Find the range of values of $k$.',
  'The quadratic equation $2x^2+3x=4k$ has no real roots. Find the range of values of $k$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 72
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  72,
  'English',
  'The quadratic equation $3x+4a-2x^2=1$ has no real roots. Find the range of values of $a$.',
  'The quadratic equation $3x+4a-2x^2=1$ has no real roots. Find the range of values of $a$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 73
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  73,
  'English',
  'The quadratic equation $3bx+bx^2+2b-1=0$ has no real roots. Find the range of values of $b$.',
  'The quadratic equation $3bx+bx^2+2b-1=0$ has no real roots. Find the range of values of $b$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 74
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  74,
  'English',
  'The quadratic equation $mx^2+(m+2)x+4m=5$ has no real roots. Find the range of values of $m$.',
  'The quadratic equation $mx^2+(m+2)x+4m=5$ has no real roots. Find the range of values of $m$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 75
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  75,
  'English',
  'The quadratic equation $cx^2+(2-c)x=2-3c$ has no real roots. Find the range of values of $c$.',
  'The quadratic equation $cx^2+(2-c)x=2-3c$ has no real roots. Find the range of values of $c$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 76
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  76,
  'English',
  'If $\alpha$ and $\beta$ are the roots of the quadratic equation $x^2+2x-3=0$, find the value of $\alpha+(1+\alpha)\beta$.',
  'If $\alpha$ and $\beta$ are the roots of the quadratic equation $x^2+2x-3=0$, find the value of $\alpha+(1+\alpha)\beta$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 77
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  77,
  'English',
  'If $\alpha$ and $\beta$ are the roots of the quadratic equation $2x^2+3x+4=0$, find the value of $\displaystyle \frac{1}{\alpha^2}+\frac{1}{\beta^2}$.',
  'If $\alpha$ and $\beta$ are the roots of the quadratic equation $2x^2+3x+4=0$, find the value of $\displaystyle \frac{1}{\alpha^2}+\frac{1}{\beta^2}$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 78
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  78,
  'English',
  'If $\alpha$ and $\beta$ are the roots of the quadratic equation $5x^2+4x-3=0$, find the value of $\alpha^2+\beta^2$.',
  'If $\alpha$ and $\beta$ are the roots of the quadratic equation $5x^2+4x-3=0$, find the value of $\alpha^2+\beta^2$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 79
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  79,
  'English',
  'If $\alpha$ and $\beta$ are the roots of the quadratic equation $9x^2+7x-8=0$, find the value of $\alpha^2+3\alpha\beta+\beta^2$.',
  'If $\alpha$ and $\beta$ are the roots of the quadratic equation $9x^2+7x-8=0$, find the value of $\alpha^2+3\alpha\beta+\beta^2$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 80
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  80,
  'English',
  'If $\alpha$ and $\beta$ are the roots of the quadratic equation $3x^2-5x+7=0$, find the value of $\alpha^2\beta+\alpha\beta^2$.',
  'If $\alpha$ and $\beta$ are the roots of the quadratic equation $3x^2-5x+7=0$, find the value of $\alpha^2\beta+\alpha\beta^2$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 81
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  81,
  'English',
  'If $\alpha$ and $\beta$ are the roots of the quadratic equation $2x^2-4x+6=0$, find the value of $(\alpha-\beta)^2$.',
  'If $\alpha$ and $\beta$ are the roots of the quadratic equation $2x^2-4x+6=0$, find the value of $(\alpha-\beta)^2$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 82
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  82,
  'English',
  'If $\alpha$ and $\beta$ are the roots of the quadratic equation $9x^2-7x-5=0$, find the value of $\displaystyle \frac{1}{\alpha}+\frac{1}{\beta}$.',
  'If $\alpha$ and $\beta$ are the roots of the quadratic equation $9x^2-7x-5=0$, find the value of $\displaystyle \frac{1}{\alpha}+\frac{1}{\beta}$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 83
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  83,
  'English',
  'If $\alpha$ and $\beta$ are the roots of the quadratic equation $5x^2-8x+4=0$, find the value of $\displaystyle \left(1-\frac{1}{\alpha}\right)\left(1-\frac{1}{\beta}\right)$.',
  'If $\alpha$ and $\beta$ are the roots of the quadratic equation $5x^2-8x+4=0$, find the value of $\displaystyle \left(1-\frac{1}{\alpha}\right)\left(1-\frac{1}{\beta}\right)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 84
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  84,
  'English',
  'If $\alpha$ and $\beta$ are the roots of the quadratic equation $6x^2-3x+4=0$, find the value of $(\alpha-2\beta)^2+3\alpha^2$.',
  'If $\alpha$ and $\beta$ are the roots of the quadratic equation $6x^2-3x+4=0$, find the value of $(\alpha-2\beta)^2+3\alpha^2$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 85
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  85,
  'English',
  'If $\alpha$ and $\beta$ are the roots of the quadratic equation $x^2-9x+5=0$, find the value of $\alpha^3+\beta^3$.',
  'If $\alpha$ and $\beta$ are the roots of the quadratic equation $x^2-9x+5=0$, find the value of $\alpha^3+\beta^3$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 86
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  86,
  'English',
  'It is given that $\alpha$ and $\beta$ are the roots of the quadratic equation $2x^2+4x-3=0$. Form a quadratic equation in $x$ whose roots are $\alpha+2\beta$ and $2\alpha+\beta$.',
  'It is given that $\alpha$ and $\beta$ are the roots of the quadratic equation $2x^2+4x-3=0$. Form a quadratic equation in $x$ whose roots are $\alpha+2\beta$ and $2\alpha+\beta$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 87
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  87,
  'English',
  'It is given that $\alpha$ and $\beta$ are the roots of the quadratic equation $x^2-px-5=0$. Form a quadratic equation in $x$ whose roots are $\alpha^2$ and $\beta^2$.',
  'It is given that $\alpha$ and $\beta$ are the roots of the quadratic equation $x^2-px-5=0$. Form a quadratic equation in $x$ whose roots are $\alpha^2$ and $\beta^2$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 88
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  88,
  'English',
  'It is given that $\alpha$ and $\beta$ are the roots of the quadratic equation $2x^2-5kx+8=0$. Form a quadratic equation in $x$ whose roots are $\alpha+\beta$ and $\alpha\beta$.',
  'It is given that $\alpha$ and $\beta$ are the roots of the quadratic equation $2x^2-5kx+8=0$. Form a quadratic equation in $x$ whose roots are $\alpha+\beta$ and $\alpha\beta$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 89
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  89,
  'English',
  'It is given that $\alpha$ and $\beta$ are the roots of the quadratic equation $3x^2+4x-5=0$. Form a quadratic equation in $x$ whose roots are $\displaystyle \frac{1}{\alpha^2}$ and $\displaystyle \frac{1}{\beta^2}$.',
  'It is given that $\alpha$ and $\beta$ are the roots of the quadratic equation $3x^2+4x-5=0$. Form a quadratic equation in $x$ whose roots are $\displaystyle \frac{1}{\alpha^2}$ and $\displaystyle \frac{1}{\beta^2}$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 90
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  90,
  'English',
  'It is given that $\alpha$ and $\beta$ are the roots of the quadratic equation $3x^2+(k+1)x-(5k-1)=0$. Form a quadratic equation in $x$ whose roots are $\displaystyle \alpha+\frac{1}{\alpha}$ and $\displaystyle \beta+\frac{1}{\beta}$.',
  'It is given that $\alpha$ and $\beta$ are the roots of the quadratic equation $3x^2+(k+1)x-(5k-1)=0$. Form a quadratic equation in $x$ whose roots are $\displaystyle \alpha+\frac{1}{\alpha}$ and $\displaystyle \beta+\frac{1}{\beta}$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 91
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  91,
  'English',
  'It is given that $\displaystyle (4+3xi)+\left(y-\frac{8}{i}\right)=5xi$, find the values of $x$ and $y$.',
  'It is given that $\displaystyle (4+3xi)+\left(y-\frac{8}{i}\right)=5xi$, find the values of $x$ and $y$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 92
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  92,
  'English',
  'It is given that $\displaystyle (2xi+9)-\left(y-\frac{4}{i}\right)=-xi$, find the values of $x$ and $y$.',
  'It is given that $\displaystyle (2xi+9)-\left(y-\frac{4}{i}\right)=-xi$, find the values of $x$ and $y$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 93
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  93,
  'English',
  'It is given that $\displaystyle (9+2xi)-\left(y+\frac{8}{i}\right)=5xi+2$, find the values of $x$ and $y$.',
  'It is given that $\displaystyle (9+2xi)-\left(y+\frac{8}{i}\right)=5xi+2$, find the values of $x$ and $y$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 94
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  94,
  'English',
  'It is given that $(x+2i)(1-4i)=3+yi$, find the values of $x$ and $y$.',
  'It is given that $(x+2i)(1-4i)=3+yi$, find the values of $x$ and $y$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 95
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  95,
  'English',
  'It is given that $(x+i)(2-3i)=7+yi$, find the values of $x$ and $y$.',
  'It is given that $(x+i)(2-3i)=7+yi$, find the values of $x$ and $y$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 96
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  96,
  'English',
  'It is given that $\displaystyle \frac{xi}{y-3i}=\frac{4}{1+2i}$, find the values of $x$ and $y$.',
  'It is given that $\displaystyle \frac{xi}{y-3i}=\frac{4}{1+2i}$, find the values of $x$ and $y$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 97
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  97,
  'English',
  'It is given that $\displaystyle \frac{2xi}{y-6i}=\frac{8}{i-2}$, find the values of $x$ and $y$.',
  'It is given that $\displaystyle \frac{2xi}{y-6i}=\frac{8}{i-2}$, find the values of $x$ and $y$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 98
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  98,
  'English',
  'It is given that $\displaystyle \frac{xi(1-i)}{y-3i}+5=0$, find the values of $x$ and $y$.',
  'It is given that $\displaystyle \frac{xi(1-i)}{y-3i}+5=0$, find the values of $x$ and $y$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 99
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  99,
  'English',
  'It is given that $4+3i=xi+yi^2+4i^3+8i^4$, find the values of $x$ and $y$.',
  'It is given that $4+3i=xi+yi^2+4i^3+8i^4$, find the values of $x$ and $y$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入英文问题 100
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  100,
  'English',
  'It is given that $\displaystyle \frac{3-x+i}{1+5i}+(y-i)(3+2i)=x+yi$, find the values of $x$ and $y$.',
  'It is given that $\displaystyle \frac{3-x+i}{1+5i}+(y-i)(3+2i)=x+yi$, find the values of $x$ and $y$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 1
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  1,
  'Chinese',
  '解\ $(3x-1)(x+2)=2x+5$.',
  '解\ $(3x-1)(x+2)=2x+5$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 2
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  2,
  'Chinese',
  '解\ $(x+5)(x-3)=2x+10$.',
  '解\ $(x+5)(x-3)=2x+10$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 3
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  3,
  'Chinese',
  '解\ $(x-2)(3x+4)=2x-8$.',
  '解\ $(x-2)(3x+4)=2x-8$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 4
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  4,
  'Chinese',
  '解\ $(x+7)(x-4)=2x+14$.',
  '解\ $(x+7)(x-4)=2x+14$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 5
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  5,
  'Chinese',
  '解\ $(2x-1)(x+3)=x+7$.',
  '解\ $(2x-1)(x+3)=x+7$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 6
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  6,
  'Chinese',
  '解\ $(5x-2)^2=(2x+1)(10x-4)$.',
  '解\ $(5x-2)^2=(2x+1)(10x-4)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 7
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  7,
  'Chinese',
  '解\ $(4x+2)^2=(3x+1)(6x+4)$.',
  '解\ $(4x+2)^2=(3x+1)(6x+4)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 8
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  8,
  'Chinese',
  '解\ $(5x+1)^2=(2x+1)(10x+1)$.',
  '解\ $(5x+1)^2=(2x+1)(10x+1)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 9
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  9,
  'Chinese',
  '解\ $(x-3)^2-2(3-x)-8=0$.',
  '解\ $(x-3)^2-2(3-x)-8=0$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 10
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  10,
  'Chinese',
  '解\ $(x-2)^2+4(x-2)-12=0$.',
  '解\ $(x-2)^2+4(x-2)-12=0$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 11
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  11,
  'Chinese',
  '解\ $(x-1)^2-6(1-x)+8=0$.',
  '解\ $(x-1)^2-6(1-x)+8=0$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 12
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  12,
  'Chinese',
  '解\ $(x-4)^2-3(4-x)-18=0$.',
  '解\ $(x-4)^2-3(4-x)-18=0$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 13
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  13,
  'Chinese',
  '解\ $(x-10)^2-6(10-x)+9=0$.',
  '解\ $(x-10)^2-6(10-x)+9=0$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 14
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  14,
  'Chinese',
  '解\ $(x-8)^2-3(8-x)-18=0$.',
  '解\ $(x-8)^2-3(8-x)-18=0$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 15
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  15,
  'Chinese',
  '解\ $3(x+2)^2-27=0$.',
  '解\ $3(x+2)^2-27=0$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 16
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  16,
  'Chinese',
  '解\ $(2x-3)^2=(x+4)^2$.',
  '解\ $(2x-3)^2=(x+4)^2$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 17
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  17,
  'Chinese',
  '解\ $(2x+1)^2=(3x-4)^2$.',
  '解\ $(2x+1)^2=(3x-4)^2$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 18
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  18,
  'Chinese',
  '解\ $\displaystyle (x-2)\left(x+\frac{3}{4}\right)-2=3(x-1)$.',
  '解\ $\displaystyle (x-2)\left(x+\frac{3}{4}\right)-2=3(x-1)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 19
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  19,
  'Chinese',
  '解\ $\displaystyle (x-2)\left(x+\frac{1}{2}\right)-1=2(x-1)$.',
  '解\ $\displaystyle (x-2)\left(x+\frac{1}{2}\right)-1=2(x-1)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 20
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  20,
  'Chinese',
  '解\ $\displaystyle (x+2)\left(x-\frac{1}{3}\right)-2=4(x+1)$.',
  '解\ $\displaystyle (x+2)\left(x-\frac{1}{3}\right)-2=4(x+1)$.'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 21
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  21,
  'Chinese',
  '一個兩位數的數位之和為\ 9。當該數字的十位和個位對調時，該數字下降\ 19。求該數字。',
  '一個兩位數的數位之和為\ 9。當該數字的十位和個位對調時，該數字下降\ 19。求該數字。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 22
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  22,
  'Chinese',
  '一個兩位數的十位數比個位數少\ 2。假設該數字是其數位之和的\ 4 倍，求該數字。',
  '一個兩位數的十位數比個位數少\ 2。假設該數字是其數位之和的\ 4 倍，求該數字。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 23
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  23,
  'Chinese',
  '求一個兩位數，使得其數位之和為\ 11，且該數與該數的反序之差為\ 27，且該數大於其反序。',
  '求一個兩位數，使得其數位之和為\ 11，且該數與該數的反序之差為\ 27，且該數大於其反序。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 24
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  24,
  'Chinese',
  '求一個兩位數，其十位數字大於個位數字，且其數位之差為\ 4，其數位之和為\ 10。',
  '求一個兩位數，其十位數字大於個位數字，且其數位之差為\ 4，其數位之和為\ 10。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 25
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  25,
  'Chinese',
  '當一個兩位數加\ 9 時，得到的數字等於該數的反序。假設該數的數位的積為\ 20，求該數字。',
  '當一個兩位數加\ 9 時，得到的數字等於該數的反序。假設該數的數位的積為\ 20，求該數字。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 26
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  26,
  'Chinese',
  '求一個兩位數，其數位之和為\ 11，使其十位和個位對調後，新數字比原數字少\ 9。',
  '求一個兩位數，其數位之和為\ 11，使其十位和個位對調後，新數字比原數字少\ 9。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 27
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  27,
  'Chinese',
  '求一個兩位數，使得該數與該數的反序之和為\ 121，其中該數字大於該數的反序，且其數位的差為\ 3。',
  '求一個兩位數，使得該數與該數的反序之和為\ 121，其中該數字大於該數的反序，且其數位的差為\ 3。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 28
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  28,
  'Chinese',
  '求一個兩位數，使得其十位數比個位數少\ 3，且其數位的積為\ 54。',
  '求一個兩位數，使得其十位數比個位數少\ 3，且其數位的積為\ 54。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 29
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  29,
  'Chinese',
  '求一個兩位數，使得其十位數比個位數少\ 3，且其數位的積為\ 18。',
  '求一個兩位數，使得其十位數比個位數少\ 3，且其數位的積為\ 18。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 30
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  30,
  'Chinese',
  '求一個兩位數，使該數的反序比原數大\ 9，且它的數位的積為\ 12。',
  '求一個兩位數，使該數的反序比原數大\ 9，且它的數位的積為\ 12。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 31
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  31,
  'Chinese',
  '陳女士現年\ $x$ 歲。她現在的年齡是二十年前年齡的平方。求她現在的年齡。',
  '陳女士現年\ $x$ 歲。她現在的年齡是二十年前年齡的平方。求她現在的年齡。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 32
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  32,
  'Chinese',
  '黃先生現年\ $x$ 歲。他現在的年齡是六年前年齡的平方。求他現在的年齡。',
  '黃先生現年\ $x$ 歲。他現在的年齡是六年前年齡的平方。求他現在的年齡。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 33
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  33,
  'Chinese',
  '李太太現年\ $x$ 歲。她現在的年齡是十二年前年齡的平方。求她現在的年齡。',
  '李太太現年\ $x$ 歲。她現在的年齡是十二年前年齡的平方。求她現在的年齡。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 34
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  34,
  'Chinese',
  '陳先生現年\ $x$ 歲。他現在的年齡是\ 30 年前年齡的平方。求他現在的年齡。',
  '陳先生現年\ $x$ 歲。他現在的年齡是\ 30 年前年齡的平方。求他現在的年齡。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 35
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  35,
  'Chinese',
  '李太太現年\ $x$ 歲。她現在的年齡是\ 42 年前年齡的平方。求她現在的年齡。',
  '李太太現年\ $x$ 歲。她現在的年齡是\ 42 年前年齡的平方。求她現在的年齡。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 36
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  36,
  'Chinese',
  '黃先生現年\ $x$ 歲。他現在的年齡是\ 56 年前年齡的平方。求他現在的年齡。',
  '黃先生現年\ $x$ 歲。他現在的年齡是\ 56 年前年齡的平方。求他現在的年齡。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 37
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  37,
  'Chinese',
  '楊女士現年\ $x$ 歲。她現在的年齡是 \ 72 年前年齡的平方。求她現在的年齡。',
  '楊女士現年\ $x$ 歲。她現在的年齡是 \ 72 年前年齡的平方。求她現在的年齡。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 38
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  38,
  'Chinese',
  '何太太現年\ $x$ 歲。她現在年齡的兩倍是她四年前年齡的平方。求她現在的年齡。',
  '何太太現年\ $x$ 歲。她現在年齡的兩倍是她四年前年齡的平方。求她現在的年齡。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 39
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  39,
  'Chinese',
  '唐先生現年\ $x$ 歲。他現在年齡的兩倍是他\ 12 年前年齡的平方。求他現在的年齡。',
  '唐先生現年\ $x$ 歲。他現在年齡的兩倍是他\ 12 年前年齡的平方。求他現在的年齡。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 40
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  40,
  'Chinese',
  '吳女士現年\ $x$ 歲。她現在年齡的三倍是她六年前年齡的平方。求她現在的年齡。',
  '吳女士現年\ $x$ 歲。她現在年齡的三倍是她六年前年齡的平方。求她現在的年齡。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 41
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  41,
  'Chinese',
  '將一個兩位數的十位數和個位數對調，新的數字比原來的數字少\ 27。若其數位之和為\ 9，則求該數字。',
  '將一個兩位數的十位數和個位數對調，新的數字比原來的數字少\ 27。若其數位之和為\ 9，則求該數字。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 42
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  42,
  'Chinese',
  '兩個正整數之差為\ 4，它們的平方之差為\ 56。求該兩個正整數。',
  '兩個正整數之差為\ 4，它們的平方之差為\ 56。求該兩個正整數。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 43
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  43,
  'Chinese',
  '兩個連續的\ 4 的倍數的平方差為\ 144。求該兩個\ 4 的倍數。',
  '兩個連續的\ 4 的倍數的平方差為\ 144。求該兩個\ 4 的倍數。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 44
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  44,
  'Chinese',
  '求出兩個連續的正奇數，使得它們的平方和是\ 130。',
  '求出兩個連續的正奇數，使得它們的平方和是\ 130。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 45
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  45,
  'Chinese',
  '兩個數字之和為\ 15，它們之積為\ 56。求該兩個數字。',
  '兩個數字之和為\ 15，它們之積為\ 56。求該兩個數字。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 46
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  46,
  'Chinese',
  '兩個整數的比為\ $4:5$，它們的差與積的比為\ $1:20$。求該兩個正整數。',
  '兩個整數的比為\ $4:5$，它們的差與積的比為\ $1:20$。求該兩個正整數。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 47
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  47,
  'Chinese',
  '兩個正整數的比是\ $5:7$。如果它們的平方差為\ 96。求該兩個正整數。',
  '兩個正整數的比是\ $5:7$。如果它們的平方差為\ 96。求該兩個正整數。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 48
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  48,
  'Chinese',
  '兩個整數的比是\ $4:11$。如果將\ 4 加到較小的數字中並從較大的數字中減去，則得到的比為 \ $1:2$。求該兩個整數。',
  '兩個整數的比是\ $4:11$。如果將\ 4 加到較小的數字中並從較大的數字中減去，則得到的比為 \ $1:2$。求該兩個整數。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 49
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  49,
  'Chinese',
  '兩個數字的比是\ $2:5$。較大的數的兩倍減去較小的數的三倍是\ 20。求該兩個整數。',
  '兩個數字的比是\ $2:5$。較大的數的兩倍減去較小的數的三倍是\ 20。求該兩個整數。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 50
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  50,
  'Chinese',
  '兩個整數的比是\ $7:9$，它們之和是\ 64。求該兩個整數。',
  '兩個整數的比是\ $7:9$，它們之和是\ 64。求該兩個整數。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 51
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  51,
  'Chinese',
  '一根\ 100 厘米長的電線被切成兩半。每個部分都彎曲成正方形。若兩個正方形的面積差為\ $225$ 平方厘米，求構成較大正方形所用的電線的長度。',
  '一根\ 100 厘米長的電線被切成兩半。每個部分都彎曲成正方形。若兩個正方形的面積差為\ $225$ 平方厘米，求構成較大正方形所用的電線的長度。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 52
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  52,
  'Chinese',
  '將一根長\ 84 厘米的電線切成兩半。每個部分都彎曲成正方形。若兩個正方形的總面積為\ $281$ 平方厘米，求較長一段電線的長度。',
  '將一根長\ 84 厘米的電線切成兩半。每個部分都彎曲成正方形。若兩個正方形的總面積為\ $281$ 平方厘米，求較長一段電線的長度。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 53
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  53,
  'Chinese',
  '將一根長\ 64 厘米的電線切成兩半。每個部分都彎曲成正方形。如果由一個部分組成的正方形的面積是另一部分組成的正方形面積的\ 9 倍，求這兩部分的長度。',
  '將一根長\ 64 厘米的電線切成兩半。每個部分都彎曲成正方形。如果由一個部分組成的正方形的面積是另一部分組成的正方形面積的\ 9 倍，求這兩部分的長度。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 54
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  54,
  'Chinese',
  '將一根長\ 150 厘米的電線切成兩半。每個部分都彎曲成正方形。若由一個部分組成的正方形的面積是另一部分組成的正方形面積的\ 4 倍，求較長部分的長度。',
  '將一根長\ 150 厘米的電線切成兩半。每個部分都彎曲成正方形。若由一個部分組成的正方形的面積是另一部分組成的正方形面積的\ 4 倍，求較長部分的長度。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 55
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  55,
  'Chinese',
  '將一條\ 100 厘米長的電線分成兩段，每段都彎曲成正方形。如果它們的周長差為\ 20 厘米，則求較大正方形的面積。',
  '將一條\ 100 厘米長的電線分成兩段，每段都彎曲成正方形。如果它們的周長差為\ 20 厘米，則求較大正方形的面積。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 56
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  56,
  'Chinese',
  '一根\ 100 厘米長的電線被切成兩半。一部分彎曲成正方形，另一部分彎曲成長方形，其長度是其寬度的\ 2 倍。若矩形的面積是正方形面積的\ 2 倍，求構成正方形所使用的電線的長度。',
  '一根\ 100 厘米長的電線被切成兩半。一部分彎曲成正方形，另一部分彎曲成長方形，其長度是其寬度的\ 2 倍。若矩形的面積是正方形面積的\ 2 倍，求構成正方形所使用的電線的長度。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 57
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  57,
  'Chinese',
  '一根\ 150 厘米長的電線被切成兩半。一部分彎曲成正方形，另一部分彎曲成長方形，其長度是其寬度的\ 3 倍。若長方形的面積是正方形面積的\ 3 倍，求正方形所用電線的長度。',
  '一根\ 150 厘米長的電線被切成兩半。一部分彎曲成正方形，另一部分彎曲成長方形，其長度是其寬度的\ 3 倍。若長方形的面積是正方形面積的\ 3 倍，求正方形所用電線的長度。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 58
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  58,
  'Chinese',
  '一根\ 180 厘米長的電線被分成兩段。其中一段比另一段長\ 20 厘米。如果將較長的部分彎成正方形，那麼該正方形的周長是多少？',
  '一根\ 180 厘米長的電線被分成兩段。其中一段比另一段長\ 20 厘米。如果將較長的部分彎成正方形，那麼該正方形的周長是多少？'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 59
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  59,
  'Chinese',
  '將一條\ 160 厘米長的電線剪短，使得一段比另一段長\ 40 厘米。如果將較長的部分彎成正方形，它的面積是多少？',
  '將一條\ 160 厘米長的電線剪短，使得一段比另一段長\ 40 厘米。如果將較長的部分彎成正方形，它的面積是多少？'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 60
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  60,
  'Chinese',
  '一根\ 200 厘米長的電線被分成兩段。一部分彎曲長方形，另一部分彎曲成正方形。若長方形的周長是正方形週長的 \3 倍，求長方形所用電線的長度。',
  '一根\ 200 厘米長的電線被分成兩段。一部分彎曲長方形，另一部分彎曲成正方形。若長方形的周長是正方形週長的 \3 倍，求長方形所用電線的長度。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 61
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  61,
  'Chinese',
  '已知二次方程\ $16+px+9x^2=0$ 有一個雙實根。求\ $p$ 的值。',
  '已知二次方程\ $16+px+9x^2=0$ 有一個雙實根。求\ $p$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 62
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  62,
  'Chinese',
  '已知二次方程\ $kx+36+x^2=0$ 有一個雙實根。求\ $k$ 的值。',
  '已知二次方程\ $kx+36+x^2=0$ 有一個雙實根。求\ $k$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 63
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  63,
  'Chinese',
  '已知二次方程\ $4+49x^2+ax=0$ 有一個雙實根。求\ $a$ 的值。',
  '已知二次方程\ $4+49x^2+ax=0$ 有一個雙實根。求\ $a$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 64
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  64,
  'Chinese',
  '已知二次方程\ $25x^2+bx=-1$ 有一個雙實根。求\ $b$ 的值。',
  '已知二次方程\ $25x^2+bx=-1$ 有一個雙實根。求\ $b$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 65
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  65,
  'Chinese',
  '已知二次方程\ $cx+8+2x^2=0$ 有一個雙實根。求\ $c$ 的值。',
  '已知二次方程\ $cx+8+2x^2=0$ 有一個雙實根。求\ $c$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 66
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  66,
  'Chinese',
  '已知二次方程\ $(4m+1)x+(m^2+1)x^2+4=0$ 有兩個不同的實根。求\ $m$ 的取值範圍。',
  '已知二次方程\ $(4m+1)x+(m^2+1)x^2+4=0$ 有兩個不同的實根。求\ $m$ 的取值範圍。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 67
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  67,
  'Chinese',
  '已知二次方程\ $4x+(a+3)x^2=5$ 有兩個不同的實根。求\ $a$ 的取值範圍。',
  '已知二次方程\ $4x+(a+3)x^2=5$ 有兩個不同的實根。求\ $a$ 的取值範圍。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 68
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  68,
  'Chinese',
  '已知二次方程\ $kx^2+(k+1)x+k-4=0$ 有兩個不同的實根。求\ $k$ 的取值範圍。',
  '已知二次方程\ $kx^2+(k+1)x+k-4=0$ 有兩個不同的實根。求\ $k$ 的取值範圍。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 69
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  69,
  'Chinese',
  '已知二次方程\ $bx^2+2b+(3-b)x=1$ 有兩個不同的實根。求\ $b$ 的取值範圍。',
  '已知二次方程\ $bx^2+2b+(3-b)x=1$ 有兩個不同的實根。求\ $b$ 的取值範圍。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 70
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  70,
  'Chinese',
  '已知二次方程\ $x^2+5x=2c-3$ 有兩個不同的實根。求\ $c$ 的取值範圍。',
  '已知二次方程\ $x^2+5x=2c-3$ 有兩個不同的實根。求\ $c$ 的取值範圍。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 71
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  71,
  'Chinese',
  '已知二次方程\ $2x^2+3x=4k$ 沒有實根。求\ $k$ 的取值範圍。',
  '已知二次方程\ $2x^2+3x=4k$ 沒有實根。求\ $k$ 的取值範圍。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 72
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  72,
  'Chinese',
  '已知二次方程\ $3x+4a-2x^2=1$ 沒有實根。求\ $a$ 的取值範圍。',
  '已知二次方程\ $3x+4a-2x^2=1$ 沒有實根。求\ $a$ 的取值範圍。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 73
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  73,
  'Chinese',
  '已知二次方程\ $3bx+bx^2+2b-1=0$ 沒有實根。求\ $b$ 的取值範圍。',
  '已知二次方程\ $3bx+bx^2+2b-1=0$ 沒有實根。求\ $b$ 的取值範圍。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 74
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  74,
  'Chinese',
  '已知二次方程\ $mx^2+(m+2)x+4m=5$ 沒有實根。求\ $m$ 的取值範圍。',
  '已知二次方程\ $mx^2+(m+2)x+4m=5$ 沒有實根。求\ $m$ 的取值範圍。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 75
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  75,
  'Chinese',
  '已知二次方程\ $cx^2+(2-c)x=2-3c$ 沒有實根。求\ $c$ 的取值範圍。',
  '已知二次方程\ $cx^2+(2-c)x=2-3c$ 沒有實根。求\ $c$ 的取值範圍。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 76
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  76,
  'Chinese',
  '若\ $\alpha$ 和\ $\beta$ 是二次方程\ $x^2+2x-3=0$ 的根，求\ $\alpha+(1+\alpha)\beta$ 的值。',
  '若\ $\alpha$ 和\ $\beta$ 是二次方程\ $x^2+2x-3=0$ 的根，求\ $\alpha+(1+\alpha)\beta$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 77
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  77,
  'Chinese',
  '若\ $\alpha$ 和\ $\beta$ 是二次方程\ $2x^2+3x+4=0$ 的根，求\ $\displaystyle \frac{1}{\alpha^2}+\frac{1}{\beta^2}$ 的值。',
  '若\ $\alpha$ 和\ $\beta$ 是二次方程\ $2x^2+3x+4=0$ 的根，求\ $\displaystyle \frac{1}{\alpha^2}+\frac{1}{\beta^2}$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 78
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  78,
  'Chinese',
  '若\ $\alpha$ 和\ $\beta$ 是二次方程\ $5x^2+4x-3=0$ 的根，求\ $\alpha^2+\beta^2$ 的值。',
  '若\ $\alpha$ 和\ $\beta$ 是二次方程\ $5x^2+4x-3=0$ 的根，求\ $\alpha^2+\beta^2$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 79
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  79,
  'Chinese',
  '若\ $\alpha$ 和\ $\beta$ 是二次方程\ $9x^2+7x-8=0$ 的根，求\ $\alpha^2+3\alpha\beta+\beta^2$ 的值。',
  '若\ $\alpha$ 和\ $\beta$ 是二次方程\ $9x^2+7x-8=0$ 的根，求\ $\alpha^2+3\alpha\beta+\beta^2$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 80
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  80,
  'Chinese',
  '若\ $\alpha$ 和\ $\beta$ 是二次方程\ $3x^2-5x+7=0$ 的根，求\ $\alpha^2\beta+\alpha\beta^2$ 的值。',
  '若\ $\alpha$ 和\ $\beta$ 是二次方程\ $3x^2-5x+7=0$ 的根，求\ $\alpha^2\beta+\alpha\beta^2$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 81
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  81,
  'Chinese',
  '若\ $\alpha$ 和\ $\beta$ 是二次方程\ $2x^2-4x+6=0$ 的根，求\ $(\alpha-\beta)^2$ 的值。',
  '若\ $\alpha$ 和\ $\beta$ 是二次方程\ $2x^2-4x+6=0$ 的根，求\ $(\alpha-\beta)^2$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 82
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  82,
  'Chinese',
  '若\ $\alpha$ 和\ $\beta$ 是二次方程\ $9x^2-7x-5=0$ 的根，求\ $\displaystyle \frac{1}{\alpha}+\frac{1}{\beta}$ 的值。',
  '若\ $\alpha$ 和\ $\beta$ 是二次方程\ $9x^2-7x-5=0$ 的根，求\ $\displaystyle \frac{1}{\alpha}+\frac{1}{\beta}$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 83
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  83,
  'Chinese',
  '若\ $\alpha$ 和\ $\beta$ 是二次方程\ $5x^2-8x+4=0$ 的根，求\ $\displaystyle \left(1-\frac{1}{\alpha}\right)\left(1-\frac{1}{\beta}\right)$ 的值。',
  '若\ $\alpha$ 和\ $\beta$ 是二次方程\ $5x^2-8x+4=0$ 的根，求\ $\displaystyle \left(1-\frac{1}{\alpha}\right)\left(1-\frac{1}{\beta}\right)$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 84
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  84,
  'Chinese',
  '若\ $\alpha$ 和\ $\beta$ 是二次方程\ $6x^2-3x+4=0$ 的根，求\ $(\alpha-2\beta)^2+3\alpha^2$ 的值。',
  '若\ $\alpha$ 和\ $\beta$ 是二次方程\ $6x^2-3x+4=0$ 的根，求\ $(\alpha-2\beta)^2+3\alpha^2$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 85
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  85,
  'Chinese',
  '若\ $\alpha$ 和\ $\beta$ 是二次方程\ $x^2-9x+5=0$ 的根，求\ $\alpha^3+\beta^3$ 的值。',
  '若\ $\alpha$ 和\ $\beta$ 是二次方程\ $x^2-9x+5=0$ 的根，求\ $\alpha^3+\beta^3$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 86
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  86,
  'Chinese',
  '已知\ $\alpha$ 和\ $\beta$ 是二次方程\ $2x^2+4x-3=0$ 的根。以\ $x$ 建立一個二次方程，其根為\ $\alpha+2\beta$ 和\ $2\alpha+\beta$。',
  '已知\ $\alpha$ 和\ $\beta$ 是二次方程\ $2x^2+4x-3=0$ 的根。以\ $x$ 建立一個二次方程，其根為\ $\alpha+2\beta$ 和\ $2\alpha+\beta$。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 87
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  87,
  'Chinese',
  '已知\ $\alpha$ 和\ $\beta$ 是二次方程\ $x^2-px-5=0$ 的根。以\ $x$ 建立一個二次方程，其根為\ $\alpha^2$ 和\ $\beta^2$。',
  '已知\ $\alpha$ 和\ $\beta$ 是二次方程\ $x^2-px-5=0$ 的根。以\ $x$ 建立一個二次方程，其根為\ $\alpha^2$ 和\ $\beta^2$。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 88
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  88,
  'Chinese',
  '已知\ $\alpha$ 和\ $\beta$ 是二次方程\ $2x^2-5kx+8=0$ 的根。以\ $x$ 建立一個二次方程，其根為\ $\alpha+\beta$ 和\ $\alpha\beta$。',
  '已知\ $\alpha$ 和\ $\beta$ 是二次方程\ $2x^2-5kx+8=0$ 的根。以\ $x$ 建立一個二次方程，其根為\ $\alpha+\beta$ 和\ $\alpha\beta$。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 89
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  89,
  'Chinese',
  '已知\ $\alpha$ 和\ $\beta$ 是二次方程\ $3x^2+4x-5=0$ 的根。以\ $x$ 建立一個二次方程，其根為\ $\displaystyle \frac{1}{\alpha^2}$ 和\ $\displaystyle \frac{1}{\beta^2}$。',
  '已知\ $\alpha$ 和\ $\beta$ 是二次方程\ $3x^2+4x-5=0$ 的根。以\ $x$ 建立一個二次方程，其根為\ $\displaystyle \frac{1}{\alpha^2}$ 和\ $\displaystyle \frac{1}{\beta^2}$。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 90
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  90,
  'Chinese',
  '已知\ $\alpha$ 和\ $\beta$ 是二次方程\ $3x^2+(k+1)x-(5k-1)=0$ 的根。以\ $x$ 建立一個二次方程，其根為\ $\displaystyle \alpha+\frac{1}{\alpha}$ 和\ $\displaystyle \beta+\frac{1}{\beta}$。',
  '已知\ $\alpha$ 和\ $\beta$ 是二次方程\ $3x^2+(k+1)x-(5k-1)=0$ 的根。以\ $x$ 建立一個二次方程，其根為\ $\displaystyle \alpha+\frac{1}{\alpha}$ 和\ $\displaystyle \beta+\frac{1}{\beta}$。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 91
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  91,
  'Chinese',
  '已知\ $\displaystyle (4+3xi)+\left(y-\frac{8}{i}\right)=5xi$，求\ $x$ 和\ $y$ 的值。',
  '已知\ $\displaystyle (4+3xi)+\left(y-\frac{8}{i}\right)=5xi$，求\ $x$ 和\ $y$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 92
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  92,
  'Chinese',
  '已知\ $\displaystyle (2xi+9)-\left(y-\frac{4}{i}\right)=-xi$，求\ $x$ 和\ $y$ 的值。',
  '已知\ $\displaystyle (2xi+9)-\left(y-\frac{4}{i}\right)=-xi$，求\ $x$ 和\ $y$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 93
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  93,
  'Chinese',
  '已知\ $\displaystyle (9+2xi)-\left(y+\frac{8}{i}\right)=5xi+2$，求\ $x$ 和\ $y$ 的值。',
  '已知\ $\displaystyle (9+2xi)-\left(y+\frac{8}{i}\right)=5xi+2$，求\ $x$ 和\ $y$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 94
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  94,
  'Chinese',
  '已知\ $(x+2i)(1-4i)=3+yi$，求\ $x$ 和\ $y$ 的值。',
  '已知\ $(x+2i)(1-4i)=3+yi$，求\ $x$ 和\ $y$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 95
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  95,
  'Chinese',
  '已知\ $(x+i)(2-3i)=7+yi$，求\ $x$ 和\ $y$ 的值。',
  '已知\ $(x+i)(2-3i)=7+yi$，求\ $x$ 和\ $y$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 96
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  96,
  'Chinese',
  '已知\ $\displaystyle \frac{xi}{y-3i}=\frac{4}{1+2i}$，求\ $x$ 和\ $y$ 的值。',
  '已知\ $\displaystyle \frac{xi}{y-3i}=\frac{4}{1+2i}$，求\ $x$ 和\ $y$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 97
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  97,
  'Chinese',
  '已知\ $\displaystyle \frac{2xi}{y-6i}=\frac{8}{i-2}$，求\ $x$ 和\ $y$ 的值。',
  '已知\ $\displaystyle \frac{2xi}{y-6i}=\frac{8}{i-2}$，求\ $x$ 和\ $y$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 98
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  98,
  'Chinese',
  '已知\ $\displaystyle \frac{xi(1-i)}{y-3i}+5=0$，求\ $x$ 和\ $y$ 的值。',
  '已知\ $\displaystyle \frac{xi(1-i)}{y-3i}+5=0$，求\ $x$ 和\ $y$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 99
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  99,
  'Chinese',
  '已知\ $4+3i=xi+yi^2+4i^3+8i^4$，求\ $x$ 和\ $y$ 的值。',
  '已知\ $4+3i=xi+yi^2+4i^3+8i^4$，求\ $x$ 和\ $y$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

-- 插入中文问题 100
INSERT INTO questions (topic_id, question_number, language, content, latex_content)
VALUES (
  (SELECT id FROM topics WHERE name = 'QuadraticEquationsInOneUnknown'),
  100,
  'Chinese',
  '已知\ $\displaystyle \frac{3-x+i}{1+5i}+(y-i)(3+2i)=x+yi$，求\ $x$ 和\ $y$ 的值。',
  '已知\ $\displaystyle \frac{3-x+i}{1+5i}+(y-i)(3+2i)=x+yi$，求\ $x$ 和\ $y$ 的值。'
)
ON CONFLICT (topic_id, question_number, language) DO NOTHING;

