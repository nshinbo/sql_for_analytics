
WITH view1 AS (
 SELECT 
   items.item_id,
   user_id,
   price
 FROM 
   `sql-project-368204.section6.items` AS items 
 INNER JOIN 
   `sql-project-368204.section6.orders2`  AS orders
   ON items.item_id = orders.item_id
),

view2 AS(
  SELECT 
    user_id, 
    SUM(price) AS sum_price
  FROM
   view1 
  GROUP BY
   user_id 
)

#view2の中身を確認
SELECT
 *
FROM
 view2

