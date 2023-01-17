--毎日の売上を取得する

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
