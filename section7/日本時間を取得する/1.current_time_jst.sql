--現在時刻を日本時間で取得する

SELECT
  CURRENT_DATETIME() AS _datetime_utc, --UTC
  CURRENT_DATETIME("+9") AS _datetime_jst1, --JST(+9で指定)
  CURRENT_DATETIME("Asia/Tokyo") AS _datetime_jst2, --JST(文字列で指定)
