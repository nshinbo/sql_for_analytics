SELECT
  item_id,
FROM
  `sql-project-368204.section7.orders` 
WHERE
  DATETIME(created,'Asia/Tokyo') BETWEEN "2022-12-01 00:00:00" AND "2022-12-31 23:59:59" 
GROUP BY
  item_id
