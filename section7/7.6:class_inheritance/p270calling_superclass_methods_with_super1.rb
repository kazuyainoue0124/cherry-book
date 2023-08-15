# ProductクラスとProductクラスを継承したDVDクラスを作成する例
class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end
product = Product.new('A greate movie', 1000)
puts product.name  #=> "A greate movie"
puts product.price #=> 1000

class DVD < Product
  # nameとpriceはスーパークラスでattr_readerが設定されているので定義不要
  attr_reader :running_time

  def initialize(name, price, running_time)
    # スーパークラスにも存在している属性
    @name = name
    @price = price
    # DVDクラス独自の属性
    @running_time = running_time
  end
end
dvd = DVD.new('A great movie', 1000, 120)
puts dvd.name         #=> "A great movie"
puts dvd.price        #=> 1000
puts dvd.running_time #=> 120