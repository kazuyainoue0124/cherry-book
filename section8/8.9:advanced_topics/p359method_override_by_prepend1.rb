# prependを活用する場面の1つはオリジナルの実装を生かした既存メソッドの置き換え

# このクラスは外部ライブラリで定義されている想定
class Product
  def name
    'A great film'
  end
end

product = Product.new
puts product.name #=> "A great film"

# prependするためのモジュールを定義する
module NameDecorator
  def name
    # prependするとsuperはミックスインした先のクラスのnameメソッドが呼び出される
    "<<#{super}>>"
  end
end

class Product
  # includeではなくprependでミックスインする
  prepend NameDecorator
end

# NameDecoratorをprependしたので、nameメソッドは装飾された文字列が返る
product = Product.new
puts product.name #=> "<<A great film>>"

# Productクラスと同じようにnameメソッドを持つクラスがあったとする
class User
  def name
    'Alice'
  end
end

class User
  # prependを使えばUserクラスのnameメソッドも置き換えることもできる
  prepend NameDecorator
end

# Userクラスのnameメソッドを上書きすることができた！
user = User.new
puts user.name #=> "<<Alice>>"