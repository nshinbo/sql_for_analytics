--SAFE_DIVIDEを使ってゼロの割り算でのエラーを回避する

SELECT
  date,
  SAFE_DIVIDE( like_cnt,buy_cnt) AS rate
FROM
  `sql-project-368204.section7.action_logs3`
