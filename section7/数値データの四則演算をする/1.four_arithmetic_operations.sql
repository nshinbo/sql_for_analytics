SELECT 
 like_cnt  +  view_cnt AS add,--足し算
 like_cnt  -   view_cnt AS sub, --引き算
 like_cnt  *  view_cnt AS multi, --かけ算
 like_cnt  /   view_cnt AS div --割り算
FROM
`sql-project-368204.section7.action_logs`

