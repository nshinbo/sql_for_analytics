

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
),

view3 AS(
  SELECT 
    AVG(sum_price) AS avg_price
  FROM view2
)


SELECT
  view2.user_id,
  view2.sum_price
FROM
  view2
WHERE
  view2.sum_price > (SELECT avg_price FROM view3)
  
  
  
