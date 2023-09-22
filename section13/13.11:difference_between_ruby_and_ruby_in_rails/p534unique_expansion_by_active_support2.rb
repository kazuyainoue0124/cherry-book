# Railsには他にも「一見、組み込みライブラリのクラスに見えるが実は違うクラス」がたくさん存在する

# ActiveSupport::HashWithIndifferentAccessクラスを使ってハッシュを作成する
countries = ActiveSupport::HashWithIndifferentAccess.new(japan: 'yen', 'us' => 'dollar')
#=> {"japan" => "yen", "us" => "dollar" }

# このクラスを使うと、キーが文字列でもシンボルでも同等に扱われる
countries[:japan]  #=> "yen"
countries['japan'] #=> "yen"
countries[:us]     #=> "dollar"
countries['us']    #=> "dollar"

# ActiveSupport::TimeWithZoneのインスタンスを作成する
time = Time.zone.now #=> Fri, 22 Sep 2023 19:08:42.894033001 JST +09:00
time.class           #=> ActiveSupport::TimeWithZone

# 異なるタイムゾーンの日時を取得する
time.in_time_zone("Asia/Tokyo") #=> Fri, 22 Sep 2023 19:08:42.894033001 JST +09:00
time.in_time_zone("US/Hawaii")  #=> Fri, 22 Sep 2023 00:08:42.894033001 HST -10:00