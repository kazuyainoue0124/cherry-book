# Comparableモジュールは比較演算を可能にするモジュール
# Comparableモジュールをincludeすると以下のメソッド（演算子）が使える
# <  <=  ==  >  >=  between?
# Comparableモジュールを使うためにはinclude先のクラスで<=>演算子を実装されている必要がある

# <=>演算子（宇宙船演算子もしくはUFO演算子）
## aがbより大きいなら正の整数
## aとbが等しいなら0
## aがbより小さいなら負の整数
## aとbが比較できない場合はnil
puts 2 <=> 1     #=> 1
puts 2 <=> 2     #=> 0
puts 1 <=> 2     #=> -1
puts 2 <=> 'abc' #=> nil

puts 'xyz' <=> 'abc' #=> 1
puts 'abc' <=> 'abc' #=> 0
puts 'abc' <=> 'xyz' #=> -1
puts 'xyz' <=> 123   #=> nil

# 文字列や数値はComparableモジュールもincludeしているので、比較演算子を使って大小関係を適切に判定できる
puts 2 > 1  #=> true
puts 2 <= 1 #=> false
puts 2 == 1 #=> false

puts 'abc' > 'xyz'  #=> false
puts 'abc' < 'xyz'  #=> true
puts 'abc' == 'xyz' #=> false