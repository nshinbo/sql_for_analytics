

SELECT
  COUNT(DISTINCT gender) AS cnt_gender,
  COUNT(DISTINCT age) AS cnt_age,
  COUNT(DISTINCT pref) AS cnt_pref
FROM
   `sql-project-368204.section4.users` 
   
