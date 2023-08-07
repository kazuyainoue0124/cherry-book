# シンボルはイミュータブルなオブジェクトとして扱うため破壊的な変更は不可能

# 文字列は破壊的な変更が可能
string = 'apple'
string.upcase!
puts string

# シンボルはイミュータブルなので、破壊的な変更は不可能
symbol = :apple
symbol.upcase! #=> undefined method `upcase!' for :apple:Symbol (NoMethodError)
puts symbol