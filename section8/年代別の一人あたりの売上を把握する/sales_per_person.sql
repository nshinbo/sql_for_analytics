--年代別の一人あたりの売上高を算出する

WITH data_mart AS (
 SELECT
   order_id,
   u.user_id,
   CASE
     WHEN age < 10 THEN "10歳未満"
     WHEN age >=10 AND age <20 THEN "10代"
     WHEN age >=20 AND age <30 THEN "20代"
     WHEN age >=30 AND age <40 THEN "30代"
     WHEN age >=40 AND age <50 THEN "40代"
     WHEN age >=50 THEN "50代以上"
     ELSE "不明"
   END AS age,
   price
 FROM
   `sql-project-368204.section8.users` AS u
   INNER JOIN `sql-project-368204.section8.orders` AS o on u.user_id = o.order_id
)

SELECT
 age,
 COUNT(DISTINCT user_id) AS UU, --ユニークユーザ数
 SUM(price) AS sales, --売上
 SUM(price)/COUNT(DISTINCT user_id) AS sales_per_user　 --一人あたりの売上
FROM
 data_mart
GROUP BY
 age --年代別に集計
ORDER BY
 age --年代別にソート
