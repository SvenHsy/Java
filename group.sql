DROP TABLE IF EXISTS employee;

-- テーブルの作成
CREATE TABLE employee (
  id      SERIAL        PRIMARY KEY,
  name    VARCHAR(255)  NOT NULL,
  country VARCHAR(255)  NOT NULL,
  salary  NUMERIC       DEFAULT 0
);

-- データの挿入
INSERT INTO employee
(name      , country , salary) VALUES 
('Nakada'  , 'Japan' , 104.2 ),
('Charlton', 'UK'    , 78.4  ),
('Muller'  , 'German', 131.6 ),
('Nakamura', 'Japan' , 64.7  ),
('Owen'    , 'UK'    , 109.1 ),
('Sammer'  , 'German', 86.5  ),
('Kagawa'  , 'Japan' , 77.2  ),
('Law'     , 'UK'    , 43.3  );

-- 国別にレコードをグループ化し、各国の最高賃金、最低賃金、平均賃金を計算する
SELECT country, MAX(salary), MIN(salary), AVG(salary)
FROM  employee
GROUP BY country;

-- 国別にレコードをグループ化し、平均賃金が 80 を超える国のみを輸出する
SELECT country
FROM employee
GROUP BY country
HAVING AVG(salary) > 80;
