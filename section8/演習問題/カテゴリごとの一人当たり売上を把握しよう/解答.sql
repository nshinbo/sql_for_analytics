WITH data_mart AS (
   SELECT
     o.order_id,
     o.item_id,
     o.price,
     o.created,
     o.user_id,
     c.category_id,
     c.name AS category_name
   FROM
     `sql-project-368204.section8.items` AS i 　
     INNER JOIN `sql-project-368204.section8.categories` AS c on  i.category_id = c.category_id
     INNER JOIN `sql-project-368204.section8.orders` AS o on i.item_id = o.item_id
   ORDER BY
     order_id
　)


SELECT
 category_name,
 COUNT(DISTINCT user_id) AS UU,
 SUM(price) AS sales,
 ROUND(SUM(price)/COUNT(DISTINCT user_id),1) AS sales_per_user
FROM
 data_mart
GROUP BY
 category_name
