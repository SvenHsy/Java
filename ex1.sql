SELECT
    customer_id,
    AVG(price)
FROM
    productorder
GROUP BY
    customer_id
HAVING
    AVG(price) <(
        SELECT
            AVG(price)
        FROM
            productorder
    );