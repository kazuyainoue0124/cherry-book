# そもそもスーパークラスとサブクラスで実行する処理が変わらないならサブクラスで同名メソッドを定義したりsuperを呼ぶ必要はない
class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class DVD < Product
  # サブクラスで特別な処理をしないなら、同名メソッドを定義する必要はない
  # (スーパークラスに処理を任せる)
  # def initialize(name, price)
  #   super
  # end
end
# DVDクラスをnewすると、自動的にスーパークラスのinitializeメソッドが呼び出される
dvd = DVD.new('A great movie', 1000)
puts dvd.name  #=> "A great movie"
puts dvd.price #=> 1000