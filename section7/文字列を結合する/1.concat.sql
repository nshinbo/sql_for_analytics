-- CONCAT関数を用いて文字列を結合する

SELECT
   last_name,
   first_name,
   CONCAT(last_name,first_name) AS name  ,
   pref,
   CASE　--東京,大阪、京都、北海道は個別処理
     WHEN pref =  "東京" THEN "東京都"
     WHEN pref =  "大阪" THEN "大阪府"
     WHEN pref =  "京都" THEN "京都府"
     WHEN pref =  "北海道" THEN "北海道"
   ELSE
     CONCAT(pref,"県") --それ以外は一括で"県"を追加
   END  AS pref
FROM
  `sql-project-368204.section7.users`   
  
  
