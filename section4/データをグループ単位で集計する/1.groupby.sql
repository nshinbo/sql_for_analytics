
SELECT
   gender,
   COUNT(age) AS cnt_age,
   AVG(age) AS avg_age,
   MAX(age) AS max_age,
   MIN(age) AS min_age
FROM
    `sql-project-368204.section4.users`
GROUP BY
   gender
