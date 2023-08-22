# superを使うとスーパークラスの同名メソッドを呼び出せる
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
    # スーパークラスのinitializeメソッドを呼び出す
    super(name, price)
    @running_time = running_time
  end
end
dvd = DVD.new('A great movie', 1000, 120)
puts dvd.name         #=> "A great movie"
puts dvd.price        #=> 1000
puts dvd.running_time #=> 120