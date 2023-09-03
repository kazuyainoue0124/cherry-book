# 例外の発生が予想できる処理であれば、実際に実行する前に問題の有無を確認できる
# 例外処理を書く前に公式リファレンスを読んで問題の有無を事前に確認できるメソッドがないかチェックするべき

require 'date'

def convert_reiwa_to_date(reiwa_text)
  m = reiwa_text.match(/令和(?<jp_year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
  year = m[:jp_year].to_i + 2018
  month = m[:month].to_i
  day = m[:day].to_i
  # 正しい日付の場合のみ、Dateオブジェクトを作成する
  if Date.valid_date?(year, month, day)
    Date.new(year, month, day)
  end
end

p convert_reiwa_to_date('令和3年12月31日') #=> #<Date: 2021-12-31 ((2459580j,0s,0n),+0s,2299161j)>
p convert_reiwa_to_date('令和3年99月99日') #-> nil