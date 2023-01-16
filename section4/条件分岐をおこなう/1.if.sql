
SELECT
   age,
   pref,
   IF (age >=20,"成年","未成年") AS category
FROM
   `sql-project-368204.section4.users2`

