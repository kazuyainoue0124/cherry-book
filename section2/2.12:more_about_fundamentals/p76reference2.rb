# b,cは同じオブジェクト、aは異なるオブジェクト
a = 'hello'
b = 'hello'
c = b

# 渡された文字列を破壊的に大文字に変換するメソッドを定義する
def m!(d)
    puts d.upcase!
end

# cにm!メソッドを適用する
m!(c)

# b,cはいずれも大文字になる
puts b
puts c

# aは別のオブジェクトなので大文字にならない
puts a