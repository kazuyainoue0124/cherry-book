# スーパークラスとサブクラスで引数の数が同じ場合は引数なしのsuperを呼ぶだけで引数をすべてスーパークラスに渡せる
class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class DVD < Product
  def initialize(name, price)
    # 引数をすべてのスーパークラスのメソッドに渡す。つまりsuper(name, price)と書いたのと同じ
    super
  end
end
dvd = DVD.new('A great movie', 1000)
puts dvd.name  #=> "A great movie"
puts dvd.price #=> 1000