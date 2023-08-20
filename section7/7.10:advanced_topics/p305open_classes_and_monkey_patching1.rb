# Rubyはクラスの継承に制限がない
# StringクラスやArrayクラスなど組み込みライブラリのクラスであっても継承して独自のクラスを定義できる

# Stringクラスを継承した独自クラスを定義する
class MyString < String
  # Stringクラスを拡張するためのコードを書く
end
s = MyString.new('Hello')
puts s       #=> "Hello"
puts s.class #=> MyString

# Arrayクラスを継承した独自クラスを定義する
class MyArray < Array
  # Arrayクラスを拡張するためのコードを書く
end
a = MyArray.new()
a << 1
a << 2
p a       #=> [1, 2]
p a.class #=> MyArray