--リピートユーザのリストを取得する

WITH first_orders AS ( 
 SELECT
   user_id,
   MIN(created) AS first_created
 FROM
    `sql-project-368204.section8.orders`
　 GROUP BY
   user_id
 ),

repeat_users AS (
 SELECT
   DISTINCT orders.user_id
 FROM
   `sql-project-368204.section8.orders` AS orders
   INNER JOIN  first_orders  ON
     first_orders.user_id = orders.user_id   --LEFT JOINの条件1
     AND first_orders.first_created <  orders.created --LEFT JOINの条件2
     AND DATE_DIFF(orders.created,first_orders.first_created,DAY) <= 30 --LEFT JOINの条件3
)


SELECT
  *
FROM
  repeat_users
WHERE
  user_id IN (3,6)
