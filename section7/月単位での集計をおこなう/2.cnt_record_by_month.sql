--月単位でレコード数を集計する

WITH orders2 AS ( --TIMESTAMPを月単位に丸める加工をした仮想テーブル
 SELECT
   TIMESTAMP_TRUNC(created,month) AS month
 FROM
   `sql-project-368204.section7.orders`
)

SELECT
  month, --月
  COUNT(*) AS cnt --レコード数をCOUNT
FROM
  orders2
GROUP BY
  month  

