dimensions = [
  [10, 20, 100],
  [30, 40, 200],
  [50, 60, 300],
]

# 3つの値をブロックパラメータに渡そうとするが、2つしかないので3つ目の値は捨てられる
dimensions.each do |length, width|
  p [length, width]
end
#=> [10, 20]
#   [30, 40]
#   [50, 60]