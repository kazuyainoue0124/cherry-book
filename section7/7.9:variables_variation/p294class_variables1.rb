# クラスインスタンス変数は同名であってもスーパークラス・サブクラスで区別するが、クラス変数は区別しない
class Product
  @@name = 'Product'

  def self.name
    @@name
  end

  def initialize(name)
    @@name = name
  end

  def name
    @@name
  end
end

class DVD < Product
  @@name = 'DVD'

  def self.name
    @@name
  end

  def upcase_name
    @@name.upcase
  end
end

# DVDクラスを定義したタイミングで@@nameが"DVD"に変更される
puts Product.name    #=> "DVD"
puts DVD.name        #=> "DVD"

product = Product.new('A great movie')
puts product.name    #=> "A great movie"

# Product.newのタイミングで@@nameが"A great movie"に変更される
puts Product.name    #=> "A great movie"
puts DVD.name        #=> "A great movie"

dvd = DVD.new('An awesome film')
puts dvd.name        #=> "An awesome film"
puts dvd.upcase_name #=> "AN AWESOME FILM"

# DVD.newのタイミングで@@nameが"An awesome film"に変更される
puts product.name    #=> "An awesome film"
puts Product.name    #=> "An awesome film"
puts DVD.name        #=> "An awesome film"