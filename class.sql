--単一行副問合せ
SELECT
    order_id,
    price
FROM
    productorder
WHERE
    price>=(
	SELECT AVG(price)
		FROM
		productorder
	);

--エラーの例
SELECT
    order_id,
    price
FROM
    productorder
WHERE
    product_id>=(
	SELECT product_id
		FROM
		product
		WHERE price>=150
	);

--複数行問い合わせINの例
SELECT
    customer_id,
    customer_name
FROM
    customer
WHERE
    customer_id IN
	(
	SELECT
		DISTINCT customer_id
		FROM
		productorder
		WHERE
		price>=700
	);

--anyの例
SELECT
    *
FROM
    product
WHERE
   stock<ANY
   (
   SELECT
	   SUM(quantity)
	   FROM
	   productorder
	   GROUP BY
	   product_id
   );

--複数テーブルの例
SELECT
    AVG(c)
FROM
 (SELECT
   customer_id,
   COUNT(*)AS c
   FROM
   productorder
   GROUP BY
   customer_id
 )AS a;
 SELECT
    product.product_id,
    product.name
FROM
    product
WHERE
    3<(
       SELECT
         SUM(quantity)
        FROM
         productorder
        WHERE
         product.product_id = productorder.product_id
    );