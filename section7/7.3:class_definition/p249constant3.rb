# 定数はインスタンスメソッド内でもクラスメソッド内でも同じ方法で参照できる
class Product
  DEFAULT_PRICE = 0

  def self.default_price
    # クラスメソッドから定数を参照する
    DEFAULT_PRICE
  end

  def default_price
    # インスタンスメソッドから定数を参照する
    DEFAULT_PRICE
  end
end

puts Product.default_price #=> 0

product = Product.new
puts product.default_price #=> 0