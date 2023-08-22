# 再代入をしなくても定数の中身がミュータブルなオブジェクトであれば値を書き換えることができてしまう
# イミュータブルなオブジェクトとは文字列(String),配列(Array),ハッシュ(Hash)など
class Product
  NAME = 'A product'
  SOME_NAMES = ['Foo', 'Bar', 'Baz']
  SOME_PRICES = { foo: 1000, bar: 2000, baz: 3000 }
end

# 文字列を破壊的に大文字に変更する
Product::NAME.upcase!
p Product::NAME #=> "A PRODUCT"

# 配列に新しい要素を追加する
Product::SOME_NAMES << 'Hoge'
p Product::SOME_NAMES #=> ["Foo", "Bar", "Baz", "Hoge"]

# ハッシュに新しいキーと値を追加する
Product::SOME_PRICES[:hoge] = 4000
p Product::SOME_PRICES #=> {:foo=>1000, :bar=>2000, :baz=>3000, :hoge=>4000}