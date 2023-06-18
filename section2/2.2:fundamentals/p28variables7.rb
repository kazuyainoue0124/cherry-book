# 2つの値を同時に代入する
a, b = 1, 2
puts a
puts b

# 右辺の数が少ない場合はnilが入る
c, d = 10
puts c
puts d # nil

# 右辺の数が多い場合ははみ出した値が切り捨てられる
e, f = 100, 200, 300
puts e # 100
puts f # 200