DROP TABLE IF EXISTS pokemon;
DROP TABLE IF EXISTS type;

-- テーブルの作成
CREATE TABLE pokemon (
  id      INT           PRIMARY KEY,
  name    VARCHAR(255)  NOT NULL,
  type_id INT           NOT NULL
);

CREATE TABLE type (
  id        INT           PRIMARY KEY,
  name      VARCHAR(255)  NOT NULL,
  super_id  INT
);

-- データの挿入
INSERT INTO pokemon VALUES
(37 , 'Vulpix', 10),
(46 , 'Paras' , 7 ),
(133, 'Eevee' , 1 );

INSERT INTO type VALUES
(2 , 'Fight', 1 ),
(7 , 'Bug'  , 12),
(10, 'Fire' , 7 ),
(11, 'Water', 10);

-- クロス結合
SELECT pokemon.name AS pokemon, type.name AS type
FROM pokemon, type;

-- 内部結合
SELECT pokemon.name AS pokemon, type.name AS type
FROM pokemon INNER JOIN type
ON pokemon.type_id = type.id;

-- 左外部結合
SELECT pokemon.name AS pokemon, type.name AS type
FROM pokemon LEFT JOIN type
ON pokemon.type_id = type.id;

-- 右外部結合
SELECT pokemon.name AS pokemon, type.name AS type
FROM pokemon RIGHT JOIN type
ON pokemon.type_id = type.id;

-- 完全外部結合
SELECT pokemon.name AS pokemon, type.name AS type
FROM pokemon FULL JOIN type
ON pokemon.type_id = type.id;

-- 自己結合
SELECT a.name AS type, b.name AS super
FROM type AS a LEFT JOIN type AS b
ON a.super_id = b.id;
