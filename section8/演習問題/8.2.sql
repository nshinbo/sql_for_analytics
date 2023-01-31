
/*解説
　createdをtimestamp_truncで月単位に丸める仮想テーブルを作成して、
　その仮想テーブルに対してgroupbyとcountを組み合わせて月ごとのUUを計算。　
　createdに対して直接timestamp_truncを利用する前に、一度DATE関数を使って日本時間の変換している。
*/


WITH data_mart AS (
   SELECT
        user_id,
        created,
        TIMESTAMP_TRUNC(DATE(created,'+9'),MONTH) AS month,
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
