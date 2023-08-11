SELECT  
  items.name,
  orders.order_id
FROM 
   `sql-project-368204.section5.items_exercise`  AS items
   LEFT JOIN `sql-project-368204.section5.orders_exercise`  AS orders
   ON items.item_id = orders.item_id 
WHERE
  orders.item_id is null
