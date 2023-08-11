WITH view1 AS (
  SELECT 
    u.user_id,
    u.age,
    o.price,
    CASE 
      WHEN age <10 THEN "10歳未満"
      WHEN age >=10 and age<20 THEN "10代"
      WHEN age >=20 and age<30 THEN "20代"
      WHEN age >=30 and age<40 THEN "30代"
      WHEN age >=40 and age<50 THEN "40代"
      WHEN age >=50 and age<60 THEN "50代"
      WHEN age >=60 THEN "60代以上"
    END  AS age_decade
  FROM
    `sql-project-368204.section6.users`  AS u
    INNER JOIN `sql-project-368204.section6.orders` As o
    ON u.user_id = o.user_id
)

SELECT
 age_decade,
 SUM(price) sum_price
FROM
 view1
GROUP BY
 age_decade
ORDER BY
 sum_price DESC
