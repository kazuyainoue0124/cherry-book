# メソッドの引数で定数を使ったりすると破壊的な変更に気づきにくい
class Product
  SOME_NAMES = ['Foo', 'Bar', 'Baz']

  def self.names_without_foo(names = SOME_NAMES)
    # namesがデフォルト値だと、以下のコードは定数のSOME_NAMESを破壊的に変更していることになる
    names.delete('Foo')
    names
  end
end

p Product.names_without_foo #=> ["Bar", "Baz"]

# 定数の中身が変わってしまった！
p Product::SOME_NAMES       #=> ["Bar", "Baz"]