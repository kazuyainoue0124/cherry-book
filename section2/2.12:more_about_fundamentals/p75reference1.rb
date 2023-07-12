# aとbはどちらも同じ文字列だが、オブジェクトとしては別物
a = 'hello'
b = 'hello'
puts a.object_id
puts b.object_id

# cをbに代入する。bとcはどちらも同じオブジェクト
c = b
puts c.object_id

# メソッドの引数にcを渡す。引数として受け取ったdはb,cと同じオブジェクトを参照している
def m(d)
    d.object_id
end

puts m(c)

# equal?メソッドを使って同じオブジェクトかどうか確認しても良い（trueなら同じオブジェクト）
puts a.equal?(b) #=> false
puts b.equal?(c) #=> true