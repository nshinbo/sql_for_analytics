

SELECT
  gender,
  COUNT(*)
FROM
   `sql-project-368204.section4.users` 
WHERE
  age >= 25
GROUP BY
  gender
