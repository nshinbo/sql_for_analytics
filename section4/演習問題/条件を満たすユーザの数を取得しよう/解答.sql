SELECT 
   DISTINCT user_id
FROM
  `sql-project-368204.section4.orders` 
WHERE
 price >= 2000
ORDER BY 
 user_id
