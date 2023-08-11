SELECT 
   user_id,
   gender,
   age,
FROM 
  `sql-project-368204.section3.users` 
WHERE
  age BETWEEN 20 AND 29
  AND gender ="男性"
ORDER BY
  age DESC
