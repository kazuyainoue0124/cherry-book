# nextは繰り返し処理を中断し次の繰り返し処理に進めたい場合に使う
numbers = [1, 2, 3, 4, 5]
numbers.each do |n|
  # 偶数であれば中断して次の繰り返し処理に進む
  next if n.even?
  puts n
end
#=> 1
#   3
#   5