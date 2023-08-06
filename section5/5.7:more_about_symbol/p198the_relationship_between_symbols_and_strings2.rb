# to_symメソッドを使うと文字列をシンボルに変換できる（エイリアスメソッドはinternメソッド）
string = 'apple'
symbol = :apple

p string.to_sym           #=> :apple
p string.to_sym == symbol #=> true