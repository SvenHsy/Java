-- 表から全生徒の名前と学年を選択する
SELECT name, score FROM student;

-- 全てのカラムを選択する
SELECT * FROM student;

-- 出力カラムの名前変更
SELECT name AS student_name, score AS test_score FROM student;

-- 重複データの削除
SELECT DISTINCT score FROM student;

-- 成績が 60 点以上の生徒の名前を検索する
SELECT name FROM student
WHERE score > 60;

-- 成績が 30 ~ 60 で、名前が「A」で始まる学生を検索する
SELECT name FROM student
WHERE score BETWEEN 30 AND 60
AND name LIKE 'A%';

-- 上位 3 名の成績を検索する
SELECT name, score FROM student
ORDER BY score DESC
LIMIT 3;

-- 最高点、最低点、平均点を算出する
SELECT MAX(score) AS highest, MIN(score) AS lowest, AVG(score) AS average
FROM student;
