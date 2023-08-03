# sizeメソッド（エイリアスメソッドはlength）を使うとハッシュの要素の個数を調べられる
puts ({}.size) #=> 0

puts ({ 'x' => 1, 'y' => 2, 'z' => 3 }.size) #=> 3