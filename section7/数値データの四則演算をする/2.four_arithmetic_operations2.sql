--四則演算する数値を直接書く
--四則演算する対象がnullの場合の挙動をみる

SELECT
  view_cnt,
  like_cnt,
  view_cnt  +  1  AS view_cnt , --view_cntに1を足す
  like_cnt + view_cnt AS like_view --like_cntとview_cntを足し算する
FROM
  `sql-project-368204.section7.action_logs2`

