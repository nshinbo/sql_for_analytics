--DATETIME関数で日本時間に変換してから特定期間のデータを取得する

SELECT
  order_id,
  DATETIME(created, "Asia/Tokyo") AS created
FROM
  `sql-project-368204.section7.orders`
WHERE
  DATETIME(created, "Asia/Tokyo")   
  >= DATETIME("2022-11-7 00:00:00") 
ORDER BY created

