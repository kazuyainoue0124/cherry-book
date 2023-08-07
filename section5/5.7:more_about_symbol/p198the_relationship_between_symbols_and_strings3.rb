# シンボルを文字列に変換する場合はto_sメソッドを使う（エイリアスメソッドはid2nameメソッド）
string = 'apple'
symbol = :apple

p symbol.to_s           #=> "apple"
p string == symbol.to_s #=> true
p string + symbol.to_s  #=> "appleapple"