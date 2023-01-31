/*解説
3000円以上の商品を購入しているユーザがキャンペーンの配信対象なので、
まずはユーザが過去に購入した商品の最大金額を算出して、その金額が3000円以上のユーザだけを取得する


別解：
ordersから3000円以上の商品の注文のあるレコードを全て取得して、distinctでuser_idの重複を削除してもよい。
*/



--ユーザごとの最大注文額を計算する
WITH max_order_prices AS ( 
  SELECT
  user_id,
  MAX(price) as max_price
  FROM
    `sql-project-368204.section8.orders`
  GROUP BY
    user_id
)

--3000円以上の商品を購入しているユーザだけを取得する
SELECT
  user_id
FROM
  max_order_prices
WHERE
  max_price >= 3000
