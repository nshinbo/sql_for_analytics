SELECT
  user_id,
  sum(price) As sum_price
FROM
  `sql-project-368204.section4.orders` 
GROUP BY
    user_id 
Having 
    sum_price >=5000
