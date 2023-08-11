WITH view1 AS (
 SELECT
   orders.user_id,
   gender,
   DATE(created,'Asia/Tokyo') AS _date,
   price
 FROM
   `sql-project-368204.section8.orders` AS orders
    INNER JOIN  `sql-project-368204.section8.users` users
    ON orders.user_id = users.user_id 
)


SELECT
 gender,
 _date,
 SUM(price) AS sales
FROM
 view1
GROUP BY
 gender,_date
ORDER BY
 gender,_date
