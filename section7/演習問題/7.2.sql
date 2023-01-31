

SELECT
  DATETIME(created,'Asia/Tokyo') AS _date
FROM
  `sql-project-368204.section7.orders` 
GROUP BY
  _date
