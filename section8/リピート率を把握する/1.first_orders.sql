--初回注文(購入)日を取得する

WITH first_orders AS ( 
 SELECT
   user_id,
   MIN(created) AS first_created
 FROM
    `sql-project-368204.section8.orders`
　 GROUP BY
   user_id
 )

 SELECT
  *
 FROM
  first_orders
 WHERE
  user_id in (3,6)
