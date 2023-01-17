-- カテゴリーごとの売上を算出する

WITH view1 AS (
 SELECT
   DATE(created,'Asia/Tokyo') AS _date,
   price
　FROM
　  `sql-project-368204.section8.orders`
)

SELECT
 _date,
 SUM(price) AS sales
FROM
 view1
GROUP BY
 _date
ORDER BY
 _date
