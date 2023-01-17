--キャンペーン配信対象リストを抽出する

SELECT
 DISTINCT users.user_id　--user_idの重複を削除
FROM
 `sql-project-368204.section8.users` AS users
 INNER JOIN `sql-project-368204.section8.orders` AS orders on users.user_id = orders.user_id
WHERE
 item_id IN ('i0002','i0005') --i0002とi0005を指定
 AND age BETWEEN 20 AND 40 --20歳から40歳を指定
 AND TIMESTAMP_DIFF(CURRENT_TIMESTAMP(),orders.created, DAY) <= 30  --createdが30日以内
