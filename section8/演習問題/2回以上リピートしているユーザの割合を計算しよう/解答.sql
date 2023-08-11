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
   orders.user_id, 
   COUNT(*) as cnt  --COUNTでリピート回数を計算
 FROM
   `sql-project-368204.section8.orders` AS orders
   INNER JOIN  first_orders  ON
     first_orders.user_id = orders.user_id  
     AND first_orders.first_created <  orders.created
     AND DATE_DIFF(orders.created,first_orders.first_created,DAY) <= 30 
 GROUP BY
  user_id --1.GROUP BYと COUNTを組合せてuser_idごとのリピート回数を計算
 Having 
  cnt >= 2 -- リピート回数が2以上のレコードのみを取得
),


data_mart AS (
  SELECT
  f.user_id,
  f.first_created,
  IF(r.user_id is not null,1,0) AS is_repeated
  FROM
  first_orders AS f
  LEFT JOIN  repeat_users AS r on f.user_id = r.user_id
  order by
  f.user_id
)

SELECT
 COUNT(first_created) AS cnt_first_order, --分母はレコード数
 SUM(is_repeated) AS cnt_repeatd_order, --分子はis_repeatedの合計
 SUM(is_repeated)/COUNT(first_created) AS repeated_rate --リピート率
FROM
 data_mart
