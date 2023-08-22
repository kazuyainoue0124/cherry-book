# equal?メソッドはobject_idが等しい場合にtrueを返す
# 全く同じインスタンスかどうかを判断する場合に使う
# equal?メソッドの挙動が変わるとプログラムの実行に悪影響を及ぼす恐れがあるため、再定義してはいけない
a = 'abc'
b = 'abc'
puts a.equal?(b) #=> false

c = a
puts a.equal?(c) #=> true