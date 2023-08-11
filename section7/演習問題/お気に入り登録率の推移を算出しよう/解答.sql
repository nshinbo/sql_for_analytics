SELECT 
  created,
  ROUND(like_cnt/view_cnt*100)  AS like_rate,
  CONCAT(ROUND(like_cnt/view_cnt*100),"%") AS like_rate2,
  CONCAT(ROUND(like_cnt/view_cnt*100,2),"%") AS like_rate3
FROM
`sql-project-368204.section7.action_logs4` 
ORDER BY
 created
