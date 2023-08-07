# デフォルト値に対して破壊的な変更を適用すると他の変数の値も一緒に変わってしまう
h = Hash.new('hello')
a = h[:foo]
b = h[:bar]
puts a #=> "hello"
puts b #=> "hello"

# 変数aと変数bは同一オブジェクト
puts a.equal?(b) #=> true

# 変数aに破壊的な変更を適用すると、変数bの値も一緒に変わってしまう
a.upcase!
puts a #=> "HELLO"
puts b #=> "HELLO"

# ちなみにハッシュ自身は空のままになっている
puts h #=> {}