/*解説

LIKE句もWHERE句内で使う他の演算子(=や<>など)同様に
ORとANDで複数条件を組み合わせることができます。

また、name LIKE "%田%" OR name ="木村"のようにすれば
名字が木村または田を含む名字のユーザを抽出することもできます。

*/

SELECT
  *
FROM
   `sql-project-368204.section3.users` 
WHERE
  name LIKE "%田%" or name LIKE "%木%"
