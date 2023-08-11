SELECT 
  u.gender,
  AVG(price) as avg_price
FROM 
  `sql-project-368204.section5.users_exercise`  AS u
  INNER JOIN  `sql-project-368204.section5.orders_exercise` AS o
  ON u.user_id = o.user_id
GROUP BY
  gender 
