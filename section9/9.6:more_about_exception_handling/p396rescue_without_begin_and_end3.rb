# rescue修飾子を使えばbeginとendを省略できるため短く書ける
# ただしrescue修飾子を使う場合は捕捉する例外クラスを指定できず、StandardErrorとそのサブクラスが捕捉される
require 'date'

def to_date(string)
  Date.parse(string) rescue nil
end

# パース可能な文字列を渡す
p to_date('2021-01-01') #=> #<Date: 2021-01-01 ((2459216j,0s,0n),+0s,2299161j)>

# パース不可能な文字列を渡す
p to_date('abcdef')     #=> nil