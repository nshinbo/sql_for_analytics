
SELECT
 order_id,
 user_id,
 price
 orders.item_id,
FROM
 `sql-project-368204.section5.orders` AS orders
 INNER JOIN `sql-project-368204.section5.items` AS items
 on orders.item_id = items.item_id 

