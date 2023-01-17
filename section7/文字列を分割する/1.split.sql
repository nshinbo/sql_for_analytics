--SPLIT関数を用いて文字列を分割する

SELECT
   SPLIT(url,"/")[OFFSET(2)]  AS url1,
   SPLIT(url,"/")[OFFSET(3) ]  AS url2,
   SPLIT(url,"/")[OFFSET(4) ]  AS url3
 FROM
  `sql-project-368204.section7.access_logs`
