# 例外処理の範囲を狭め、捕捉する例外クラスを限定する
require 'date'

def convert_reiwa_to_date(reiwa_text)
  m = reiwa_text.match(/令和(?<jp_year>\d+)年(?<jp_month>\d+)月(?<jp_day>\d+)日/)
  year = m[:jp_year].to_i + 2018
  month = m[:jp_month].to_i
  day = m[:jp_day].to_i
  begin
    Date.new(year, month, day)
  rescue ArgumentError
    # 無効な日付であればnilを返す
    nil
  end
end

p convert_reiwa_to_date('令和3年12月31日') #=> #<Date: 2021-12-31 ((2459580j,0s,0n),+0s,2299161j)>
p convert_reiwa_to_date('令和3年99月99日') #-> nil