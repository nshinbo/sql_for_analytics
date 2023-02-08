/*解説
 まず最初にCASE式を用いて年代を年代に変更したカラムを作成してASでそのカラムに名前を付ける。
 後はそのカラム名(今回はage_2)を対象にしてGROUPBYをしてSELECT文内でCOUNTをすれば良い。
*/

SELECT 
 COUNT(*) AS cnt,
 CASE
  WHEN age < 10 THEN "10歳未満"
  WHEN age>= 10 and age<20 THEN "10代"
  WHEN age>= 20 and age<30 THEN "20代"
  WHEN age>= 30 and age<40 THEN "30代"
  WHEN age>= 40 and age<50 THEN "40代"
  WHEN age>= 50 and age<60 THEN "50代"
  WHEN age>=60 THEN "60代以上"
 END AS age_2
FROM
 `sql-project-368204.section4.users` 
GROUP BY
  age_2
ORDER BY
  age_2
  
  
