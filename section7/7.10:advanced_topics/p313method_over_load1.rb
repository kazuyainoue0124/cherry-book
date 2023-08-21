# Rubyではメソッドのオーバーロードという考え方はない
# オーバーロードとは引数のデータ型や個数に応じて同じ名前のメソッドを複数定義できる、というもの
# is_a?メソッドで引数のクラスをチェックしたりto_iメソッドで明示的に数値に変換してオーバーロードと同じ仕組みを実現する
def add_ten(n)
  # nが整数以外の場合にも対応するためto_iで整数に変換する
  n.to_i + 10
end

# 整数を渡す
puts add_ten(1)   #=> 11

# 文字列やnilを渡す
puts add_ten('2') #=> 12
puts add_ten(nil) #=> 10