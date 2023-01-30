

SELECT
  pref,
  CASE 
    WHEN pref IN ("東京","埼玉","栃木") THEN "関東"
    ELSE　pref
  END
FROM
   `sql-project-368204.section4.users` 
 
