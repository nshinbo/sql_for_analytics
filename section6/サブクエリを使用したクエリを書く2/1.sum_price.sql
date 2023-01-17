
SELECT
 user_id,
 SUM(price) AS sum_price
FROM
 `sql-project-368204.section6.orders`
GROUP BY
 user_id
ORDER BY
 user_id

