

WITH t_orders_price AS (

  SELECT
    user_id,
    SUM(price) AS sum_price
  FROM
    `sql-project-368204.section6.orders`
  GROUP BY
    user_id
)


SELECT
  MAX(sum_price) AS max_price
FROM
  t_orders_price
  
  
