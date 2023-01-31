
/*解説
WHERE句のなかでBETWEENを使用して取得する日時の範囲を指定する。
Bigqueryでは日時を文字列で指定した場合も自動的に変換してくれるため,
解答例のようにBETWEENの対象範囲を文字列にしても実行できるが、Bigqueryの
ローカルルールのためBigquery以外のSQLではエラーになる

*/

SELECT
  created,
  DATETIME(created,'Asia/Tokyo') AS created_jst
FROM
  `sql-project-368204.section7.orders` 
WHERE
  DATETIME(created,'Asia/Tokyo') BETWEEN "2022-11-02 00:00:00" AND "2022-11-02 23:59:59" 
