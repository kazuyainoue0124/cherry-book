dimensions = [
  [10, 20],
  [30, 40],
  [50, 60],
]

# each_with_indexメソッドの場合、もともとブロックパラメータが2つなので割り当てがずれてしまう
dimensions.each_with_index do |length, width, i|
  puts "length: #{length}, width: #{width}, i: #{i}"
end
#=> length: [10, 20], width: 0, i: 
#   length: [30, 40], width: 1, i: 
#   length: [50, 60], width: 2, i: