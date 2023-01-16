
SELECT
  pref,
  CASE
    WHEN pref = "熊本" THEN "九州" 
　  ELSE  "九州以外"
  END AS pref2 
FROM
  `sql-project-368204.section4.users`
  
  
