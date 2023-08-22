class User
  # 省略

  def icon_url
    twitter_data[:icon]
  end

  def location
    twitter_data[:location]
  end

  def twitter_data
    # Twitter APIからデータを取得して変数dataに代入する処理を書く
    # .
    # .
    data
  end
end

# 上記のコードだとicon_urlメソッドやlocationメソッドを呼び出すたびにtwitter_dataメソッドを通じて毎回Twitter APIが呼び出されてしまう
# Twitterのアカウント情報はそこまで頻繁に変更されるわけではないため、1回呼び出したらその情報を保持して再利用した方が良い