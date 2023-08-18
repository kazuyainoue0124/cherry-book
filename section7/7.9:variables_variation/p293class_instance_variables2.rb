# インスタンス変数は同じ変数名であればスーパークラス・サブクラスともに同一のインスタンスが参照されるが、
# クラスインスタンス変数は同名であってもスーパークラスとサブクラスで異なる変数として参照される
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

class DVD < Product
  @name = 'DVD'

  def self.name
    # クラスインスタンス変数を参照
    @name
  end

  def upcase_name
    # インスタンス変数を参照
    @name.upcase
  end
end

puts Product.name    #=> "Product"
puts DVD.name        #=> "DVD"

product = Product.new('A great movie')
puts product.name    #=> "A great movie"

dvd = DVD.new('An awesome film')
puts dvd.name        #=> "An awesome film"
puts dvd.upcase_name #=> "AN AWESOME FILM"
