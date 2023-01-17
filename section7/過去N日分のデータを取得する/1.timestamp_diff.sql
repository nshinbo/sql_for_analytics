--TIMESTAMP_DIFF関数で2つの時刻の差を計算する

SELECT
  *
FROM
  `sql-project-368204.section7.orders`
WHERE
   TIMESTAMP_DIFF(CURRENT_TIMESTAMP(), created, DAY) <= 30 

