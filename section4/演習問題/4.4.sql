
/*解説
IFの第一引数に入れる条件式には AND、OR、INやBETWEENを利用することができる。
そのためIFの中で複数の条件を指定することが可能。
*/

SELECT
  pref,
  IF(pref IN ("東京","埼玉","栃木"),"関東",pref) AS pref2, --INを利用して指定
  IF(pref ="東京" or pref ="埼玉" or pref ="栃木","関東",pref) AS pref3　--ORをつなげてもよい
FROM
   `sql-project-368204.section4.users2` 
   
 
