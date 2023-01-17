--テーブル上にあるUTCのcreatedをJSTに変換する

SELECT
  created,
  DATETIME(created, "Asia/Tokyo") AS _datetime_jst  --UTCのcreatedをDATETIME型の日本時間に変換
FROM
  `sql-project-368204.section7.orders`
 
