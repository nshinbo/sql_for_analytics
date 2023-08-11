WITH categories AS (
SELECT 
  pc.name AS parent_name,
  c2.name,
  c2.category_id,
  c2.parent_id
FROM 
  `sql-project-368204.section8.patent_categories`  AS pc
  INNER JOIN `sql-project-368204.section8.categories2` AS c2
  ON pc.id = c2.parent_id

),

data_mart AS (
   SELECT
     o.order_id,
     o.item_id,
     o.price,
     o.created,
     c.category_id,
     c.parent_name
   FROM
     `sql-project-368204.section8.items` AS i 
     INNER JOIN  categories AS c on  i.category_id = c.category_id
     INNER JOIN `sql-project-368204.section8.orders` AS o on i.item_id = o.item_id
   ORDER BY
     order_id
　)


SELECT
  parent_name,
  SUM(price) AS total_sales --SUM関数でカテゴリ別に売上を合計
FROM
  data_mart
GROUP BY
  parent_name --カテゴリごとに集約
ORDER BY
  total_sales DESC --ORDER BY ○○ DESCで降順ソート
