# 左辺の変数に*をつけると、残りの全ての要素を配列として受け取れる
e, *f = 100, 200, 300
pp e #=> 100
pp f #=> [200, 300]