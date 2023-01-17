--DAUを計算する

WITH data_mart AS (
   SELECT
        user_id,
        DATE(created,'Asia/Tokyo') AS created,
        url
   FROM
       `sql-project-368204.section8.access_logs`
 )
  SELECT
   created,--1日単位にまとめられたCreated
   COUNT(DISTINCT user_id) AS cnt --1日のアクセスUU
 FROM
   data_mart
 GROUP BY
   created  --1日単位でGroupBY
 ORDER BY
   created
