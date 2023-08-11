SELECT  
  DISTINCT items.name
FROM 
  `sql-project-368204.section5.items_exercise`  AS items
  INNER JOIN  `sql-project-368204.section5.orders_exercise`  AS orders ON items.item_id = orders.item_id
  INNER JOIN `sql-project-368204.section5.users_exercise`  AS users  ON orders.user_id = users.user_id
WHERE
  gender = "男性"
