# 元の大きさよりも大きいインデックスを指定すると、間の値がnilで埋められる
a = [1, 2, 3]
a[4] = 50
puts a #=> [1, 2, 3, nil, 50]