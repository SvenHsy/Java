-- 全男子生徒のデータを、年齢が高い順でソートしてクエリ
SELECT * FROM student
WHERE gender = 'Male'
ORDER BY age DESC;

-- Python クラスと Java クラスの生徒の平均年齢をそれぞれ求める
SELECT subject, AVG(age) FROM student
GROUP BY subject;

-- 学生一人ひとりの講師、授業料、時間数を検索
SELECT student.name, subject.teacher, subject.fee, subject.hour
FROM student JOIN subject
ON student.subject = subject.name;

-- 各コースの授業料の合計を計算する
SELECT subject.name AS subject, COUNT(student.name) * subject.fee AS total_fee
FROM student RIGHT JOIN subject
ON student.subject = subject.name
GROUP BY subject.name;
