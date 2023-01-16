
SELECT
 order_id,
 user_id,
 items.item_id,
 price
FROM
 `sql-project-368204.section5.orders` AS orders 
 LEFT JOIN  `sql-project-368204.section5.items` AS items
 on orders.item_id = items.item_id 
