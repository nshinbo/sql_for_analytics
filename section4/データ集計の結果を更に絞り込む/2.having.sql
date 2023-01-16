

SELECT
  pref,
  COUNT(*) AS cnt
FROM
  `sql-project-368204.section4.users`
GROUP BY
  pref
HAVING
  cnt>=2
