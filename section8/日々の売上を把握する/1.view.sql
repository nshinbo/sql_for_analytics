--DATE関数でcreatdを1日単位に丸める

WITH view1 AS (
 SELECT
   DATE(created,'Asia/Tokyo') AS _date,
   price
　FROM
　  `sql-project-368204.section8.orders`
)

SELECT
 *
FROM
  view1
 
