--ユーザーごとのファネルを0-1で表現した仮想テーブルを作成する


WITH top AS (
 SELECT  
　*
 FROM 
　`sql-project-368204.section8.access_logs2`
 WHERE
　 url = 'register/top'
),

input AS (
 SELECT  
　*
 FROM 
　`sql-project-368204.section8.access_logs2`
 WHERE
　 url = 'register/input'
),
credit AS (
 SELECT  
　*
 FROM 
　`sql-project-368204.section8.access_logs2`
 WHERE
　 url = 'register/credit'
),

complete AS (
 SELECT  
　*
 FROM 
　`sql-project-368204.section8.access_logs2`
 WHERE
　 url = 'register/complete'
)

,data_mart AS (
 SELECT
   top.user_id,
   IF(top.url is not null,1,0) AS is_top,　
   IF(input.url is not null,1,0) AS is_input,
   IF(credit.url is not null,1,0) AS is_credit,
   IF(complete.url is not null,1,0) AS is_complete
 FROM
   top 
   LEFT JOIN input on top.user_id = input.user_id
   LEFT JOIN credit on top.user_id = credit.user_id
   LEFT JOIN complete on top.user_id = complete.user_id
 ORDER BY
   user_id
)


SELECT
  *
FROM
  data_mart








