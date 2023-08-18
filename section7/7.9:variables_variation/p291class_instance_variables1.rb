# インスタンス変数はインスタンス化（クラス名.newでオブジェクトを作成）した際に、オブジェクトごとに管理される変数
# クラスインスタンス変数はインスタンスの作成とは無関係に、クラス自身が保持しているデータ（クラス自身のインスタンス変数）
class Product
  # クラスインスタンス変数
  @name = 'Product'

  def self.name
    # クラスインスタンス変数
    @name
  end

  def initialize(name)
    # インスタンス変数
    @name = name
  end
  
  # attr_reader :nameでもいいが、@nameの中身を意識するためにあえてメソッドを定義する
  def name
    # インスタンス変数
    @name
  end
end

puts Product.name #=> "Product"

product = Product.new('A great movie')
puts product.name #=> "A great movie"
puts Product.name #=> "Product"