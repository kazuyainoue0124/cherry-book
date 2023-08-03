dimensions = [
  [10, 20],
  [30, 40],
  [50, 60],
]

# いったん配列のまま受け取る
dimensions.each_with_index do |dimension, i|
  # 配列から縦と横の値を取り出す
  length = dimension[0]
  width = dimension[1]
  puts "length: #{length}, width: #{width}, i: #{i}"
end
#=> length: 10, width: 20, i: 0
#   length: 30, width: 40, i: 1
#   length: 50, width: 60, i: 2