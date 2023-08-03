# ()を使わない場合はdimensionに配列の[10, 20]が代入される
dimension, i = [[10, 20], 0]
p dimension #=> [10, 20]
p i         #=> 0

# ()を使うと内側の配列の要素(10と20)を別々の変数(lengthとwidth)に代入できる
(length, width), i = [[10, 20], 0]
p length #=> 10
p width  #=> 20
p i      #=> 0