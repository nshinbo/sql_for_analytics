SELECT 
   user_id,
   sum(price) as sum_price,
   IF(sum(price)>=3000,1,0) AS price
FROM
  `sql-project-368204.section4.orders` 
GROUP BY
  user_id
ORDER BY
  sum_price desc
