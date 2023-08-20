# クラス内で演算子をオーバーライドできる
class Product
  attr_reader :code, :name

  def initialize(code, name)
    @code = code
    @name = name
  end

  # == をProductクラスでオーバーライド
  def ==(other)
    # otherがProductかつ、商品コードが一致していれば同じProductと見なす
    other.is_a?(Product) && code == other.code
  end
end

# aとcが同じ商品コード
a = Product.new('A-0001', 'A great movie')
b = Product.new('B-0001', 'An awesome film')
c = Product.new('A-0001', 'A great movie')

# デフォルトでは同じobject_id(まったく同じインスタンス)の場合にtrueになる
puts a == a   #=> true

# 商品コードが一致すればtrueになる
puts a == b   #=> false
puts a == c   #=> true

# Product以外の比較はfalse
puts a == 1   #=> false
puts a == 'a' #=> false

# == はメソッドなので普通のメソッドのようにドット(.)付きでも呼び出せる
puts a.==(b)  #=> false
puts a.==(c)  #=> true