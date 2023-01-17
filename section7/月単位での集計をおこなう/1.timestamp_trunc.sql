-- 日時を月単位に丸める

SELECT
  created,
  TIMESTAMP_TRUNC(created,month) AS month
FROM
  `sql-project-368204.section7.orders`
ORDER BY
  created

