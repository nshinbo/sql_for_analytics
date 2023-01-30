
/*解説
 INNER JOINは両方のテーブルのある値しか残さないので、
 どちらを先に書いても結果は変わらない
*/

SELECT
   *
FROM
   `sql-project-368204.section5.items` AS items
   INNER JOIN `sql-project-368204.section5.orders` AS orders
   ON items.item_id = orders.item_id
 
 
