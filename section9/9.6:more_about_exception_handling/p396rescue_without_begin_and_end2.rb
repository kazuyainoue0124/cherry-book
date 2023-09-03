# 次のto_dateメソッドはrescue修飾子を使ってもっと短く書ける
require 'date'

def to_date(string)
  begin
    # 文字列のパースを試みる
    Date.parse(string)
  rescue ArgumentError
    # パースできない場合はnilを返す
    nil
  end
end

# パース可能な文字列を渡す
p to_date('2021-01-01') #=> #<Date: 2021-01-01 ((2459216j,0s,0n),+0s,2299161j)>

# パース不可能な文字列を渡す
p to_date('abcdef')     #=> nil