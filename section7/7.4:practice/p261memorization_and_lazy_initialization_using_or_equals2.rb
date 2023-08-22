# ||=を活用するとtwitter_dataメソッドを最初に呼び出した時だけTwitter APIからデータが取得され、
# 2回目以降は@twitter_dataに格納された値を返却するため、パフォーマンスが向上する
def twitter_data
  # インスタンス変数と||=を使ったメモ化（データの保持）
  @twitter_data ||= begin
    # Twitter APIからデータを取得する処理を書く
  end
end