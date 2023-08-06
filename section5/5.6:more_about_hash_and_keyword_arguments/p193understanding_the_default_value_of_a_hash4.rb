# キーが見つからないとブロックがその都度実行され、ブロックの戻り値がデフォルト値になる
h = Hash.new { 'hello' }
a = h[:foo]
b = h[:bar]

puts a #=> "hello"
puts b #=> "hello"

# 変数aと変数bは異なるオブジェクト（ブロックの実行時に毎回新しい文字列が作成される）
puts a.equal?(b) #=> false

# 変数aに破壊的な変更を適用しても、変数bの値は変わらない
a.upcase!

puts a #=> "HELLO"
puts b #=> "hello"

# ハッシュは空のまま
puts h #=> {}