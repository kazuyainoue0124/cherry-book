# 配列の特定の要素を削除したい場合はdelete_atメソッドを使う
a = [1, 2, 3]

# 2番目の要素を削除する(削除した値が戻り値になる)
puts a.delete_at(1) #=> 2
puts a #=> 3

# 存在しない添え字を指定するとnilが返る
puts a.delete_at(100) #=> nil
puts a #=> [1, 3]