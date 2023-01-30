
/*解説
 LEFT JOINの場合左側のテーブルは全て残る。
 ordersテーブルにはitemsのi0001の注文情報は存在しないが、
 itemsを左側に書いた場合item_id =i0001のレコードは結合後のテーブルに存在する。
 このときitem_id=i0001のレコードには結合対象がないので、order_id,user_idにはnullが入る。
*/

SELECT
   *
FROM
   `sql-project-368204.section5.items` AS items
   LEFT JOIN `sql-project-368204.section5.orders` AS orders
   ON items.item_id = orders.item_id
   
   
