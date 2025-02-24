# Timeクラスで日時を表すオブジェクトを作成する
# '+0900'はUTC（世界標準時）から9時間進んでいることを表す
time = Time.new(2021, 1, 31, 23, 30, 59)
#=> 2021-01-31 23:30:59 +0900

# dateライブラリをrequireするとDateクラスとDateTimeクラスが使えるようになる
require 'date'

# Dateクラスで日付を表すオブジェクトを作成する
date = Date.new(2021, 1, 31)
#=> #<Date: 2021-01-31 ((2459246j,0s,0n),+0s,2299161j)>

# DateTimeクラスで日時を表すオブジェクトを作成する（非推奨）
date_time = DateTime.new(2021, 1, 31, 23, 30, 59)
#=> #<DateTime: 2021-01-31T23:30:59+00:00 ((2459246j,84659s,0n),+0s,2299161j)>