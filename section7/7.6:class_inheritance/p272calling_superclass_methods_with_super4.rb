# super()と書いた場合は「引数0個でスーパークラスの同名メソッドを呼び出す」の意味になる
class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class DVD < Product
  def initialize(name, price)
    # super()だと引数なしでスーパークラスのメソッドを呼び出す
    # (ただし数が合わないのでこのコードはエラーになる)
    super()
  end
end
# スーパークラスのinitializeメソッドを引数0個で呼び出そうとするのでエラーになる
dvd = DVD.new('A great movie', 1000)
#=> wrong number of arguments (given 0, expected 2) (ArgumentError)