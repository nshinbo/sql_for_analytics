
SELECT
 item_id,
 price
FROM
 `sql-project-368204.section6.items`
WHERE
 price >=
 (
   SELECT AVG(price) FROM `sql-project-368204.section6.items`
 )

