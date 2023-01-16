
SELECT
  gender,
  pref,
  COUNT(*) AS cnt
FROM
  `sql-project-368204.section4.users`
GROUP BY
  gender,pref
ORDER BY
  gender
  
