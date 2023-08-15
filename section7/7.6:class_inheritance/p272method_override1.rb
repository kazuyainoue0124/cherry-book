# to_sメソッドはObjectクラスで定義されているため、すべてのオブジェクトで呼び出せる
class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end
end

product = Product.new('A great movie', 1000)
# Productクラスのオブジェクトからto_sメソッドを呼び出せる
puts product.to_s #=> #<Product:0x00000001033f0210>

dvd = DVD.new('An awesome film', 3000, 120)
# DVDクラスのオブジェクトからto_sメソッドを呼び出せる
puts dvd.to_s     #=> #<DVD:0x000000010440f8d0>