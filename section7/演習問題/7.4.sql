
SELECT
  created,
  DATE_TRUNC(DATETIME(created,'Asia/Tokyo'),month) as month
FROM
  `sql-project-368204.section7.orders` 

