WITH data_mart AS (
   SELECT
        user_id,
        created,
        TIMESTAMP_TRUNC(DATE(created,'+9'),MONTH) AS month, --DATEで日本時間に変換後にTRUCで丸める
        url
   FROM
       `sql-project-368204.section8.access_logs`
 )


SELECT
  month,--月単位にまとめられた日付
  COUNT(DISTINCT user_id) AS cnt --毎月のアクセスUU
FROM
  data_mart
GROUP BY
  month  --月単位でGroupBY
ORDER BY
  month
