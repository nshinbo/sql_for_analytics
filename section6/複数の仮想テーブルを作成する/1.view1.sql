
WITH view1 AS (
 SELECT 
   items.item_id,
   user_id,
   price
 FROM
   `sql-project-368204.section6.items` AS items 
   INNER JOIN `sql-project-368204.section6.orders2`  AS orders
   ON items.item_id = orders.item_id 
)


#view1の中身を確認
SELECT
 *
FROM
 view1 
 
