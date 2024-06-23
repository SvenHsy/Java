DROP TABLE IF EXISTS student;

-- テーブルの作成
CREATE TABLE student (
  id    INT           PRIMARY KEY,
  name  VARCHAR(255)  NOT NULL,
  score SMALLINT      DEFAULT 0
);

-- テーブルにレコードを挿入する
INSERT INTO student VALUES (0, 'Alice', 90);

-- 複数行のデータを挿入する
INSERT INTO student VALUES
(1, 'Bob'    , 40),
(2, 'Charlie', 70);

-- データを挿入するカラムを指定する
INSERT INTO student (id, name) VALUES (3, 'Dave');

-- カラム名の指定は、テーブル作成時に指定された順番に従う必要はない
INSERT INTO student (id, score, name) VALUES (4, 40, 'Ana');
