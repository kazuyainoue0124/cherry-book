# 無限ループから脱出する場合はbreakを使う
numbers = [1, 2, 3, 4, 5]
# loopメソッドで実装
loop do
  # sampleメソッドでランダムに要素を1つ取得する
  n = numbers.sample
  puts n
  break if n == 5
end
#=> 1
#   4
#   2
#   2
#   5

# while文で実装
while true
  n = numbers.sample
  puts n
  break if n == 5
end
#=> 4
#   4
#   1
#   5