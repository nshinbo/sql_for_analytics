SELECT 
   COUNT(DISTINCT user_id) AS uu,
   COUNT(user_id) AS cnt
FROM
  `sql-project-368204.section4.orders` 
WHERE
 price >= 2000
