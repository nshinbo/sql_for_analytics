
/*解説
サブクエリ内では通常のクエリと同じ文法が使えるため、
サブクエリでavg(age)を使い、usersの平均年齢を計算すれば良い。
*/

SELECT
  *
FROM
  `sql-project-368204.section4.users` 
WHERE
  age >= (SELECT avg(age) FROM `sql-project-368204.section4.users` )
