# 例外処理の範囲が広すぎたり、補足する例外クラスの種類が多すぎると、異常終了すべき例外まで捕捉してしまい得る

require 'date'

# 令和の日付文字列をDateオブジェクトに変換する
# 以下のコードではメソッドの実行中に発生した例外をすべて飲み込んでnilを返してしまう
def convert_reiwa_to_date(reiwa_text)
  begin
    m = reiwa_text.match(/令和(?<jp_year>\d+)年(?<jp_month>\d+)月(?<jp_day>\d+)日/)
    year = m[:jp_year].to_i + 2018
    month = m[:month].to_i
    day = m[:day].to_i
    Date.new(year, month, day)
  rescue
    # 例外が起きたら（＝無効な日付が渡されたら）nilを返したい
    nil
  end
end