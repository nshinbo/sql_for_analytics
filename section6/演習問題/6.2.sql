

/*解説
viewは一時的に利用できるテーブルのため、
viewを対象にしたサブクエリを書くことが可能。

*/

WITH view1 AS ( --平均年齢を計算する仮想テーブル
  
  SELECT 
    avg(age) AS avg_age
  FROM 
    `sql-project-368204.section4.users` 
)


SELECT
  *
FROM
  `sql-project-368204.section4.users` 
WHERE
  age >= (SELECT avg_age from view1)　--view1テーブルから平均年齢を取得するサブクエリ
