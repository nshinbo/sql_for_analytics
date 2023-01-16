
SELECT
 users.user_id,
 users.name,
 orders.order_id,
 items.item_id,
 items.price
FROM
 `sql-project-368204.section5.users` AS users
 INNER JOIN `sql-project-368204.section5.orders` AS orders on users.user_id = orders.user_id
 LEFT JOIN `sql-project-368204.section5.items` AS items on orders.item_id = items.item_id

