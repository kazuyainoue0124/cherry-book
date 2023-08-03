dimensions = [
  # [縦、横]
  [10, 20],
  [30, 40],
  [50, 60],
]

# 面積の計算結果を格納する配列
areas = []
# ブロックパラメータが1個であればブロックパラメータの値が配列になる
dimensions.each do |dimension|
  length = dimension[0]
  width = dimension[1]
  areas << length * width
end

p areas #=> [200, 1200, 3000]