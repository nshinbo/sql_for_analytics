
WITH t_orders_price AS (

  SELECT
    user_id,
    SUM(price) AS sum_price
  FROM
    `sql-project-368204.section6.orders`
  GROUP BY
    user_id
)

--仮想テーブルの中身を確認する本体クエリ
SELECT
  *
FROM
  t_orders_price

