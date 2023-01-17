--カテゴリ名を注文情報を紐付けたテーブルを作成する

WITH data_mart AS (
   SELECT
     o.order_id,
     o.item_id,
     o.price,
     o.created,
     c.category_id,
     c.name
   FROM
     `sql-project-368204.section8.items` AS i 　
     INNER JOIN `sql-project-368204.section8.categories` AS c on  i.category_id = c.category_id
     INNER JOIN `sql-project-368204.section8.orders` AS o on i.item_id = o.item_id
   ORDER BY
     order_id
　)

SELECT
  *
FROM
  data_mart 
