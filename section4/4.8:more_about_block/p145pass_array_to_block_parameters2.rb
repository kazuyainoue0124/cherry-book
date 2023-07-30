dimensions = [
  # [縦, 横]
  [10, 20],
  [30, 40],
  [50, 60],
]

# 面積の計算結果を格納する配列
areas = []
# 配列の要素分だけブロックパラメータを用意すると、各要素の値が別々の変数に格納される
dimensions.each do |length, width|
  areas << length * width
end

p areas #=> [200, 1200, 3000]

# lengthとwidthには値が渡されるが、fooとbarはnilになる
dimensions.each do |length, width, foo, bar|
  p [length, width, foo, bar]
end
#=> [10, 20, nil, nil]
#   [30, 40, nil, nil]
#   [50, 60, nil, nil]