dimensions = [
  [10, 20],
  [30, 40],
  [50, 60],
]

# ブロックパラメータを()で囲んで、配列の要素を別々のパラメータとして受け取る
dimensions.each_with_index do |(length, width), i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end

#=> length: 10, width: 20, i: 0
#   length: 30, width: 40, i: 1
#   length: 50, width: 60, i: 2