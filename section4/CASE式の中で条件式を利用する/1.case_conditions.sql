
SELECT
   age,
   CASE  
     WHEN   age = 25 THEN  "20代"
     WHEN   age = 21 THEN  "20代"
     WHEN   age = 30 THEN  "30代"
     WHEN   age = 25 THEN  "20代"
     WHEN   age = 45 THEN  "40代"
     WHEN   age = 22 THEN  "20代"
   END AS age
FROM
   `sql-project-368204.section4.users`
   
   
