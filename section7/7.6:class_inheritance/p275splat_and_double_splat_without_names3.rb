# Ruby3.0では「キーワード引数の分離」が行われたため、キーワード引数を伴うメソッド呼び出しの場合は
# (*, **)のようにしないとエラーになる
class Product
  # superメソッドがキーワード引数を受け取るようにする
  def initialize(name, price: 0)
    puts "name: #{name}, price: #{price}"
  end
end

class DVD < Product
  # Ruby2.7までは(*)だけでもキーワード引数をメソッドに渡せたが、
  # Ruby3.0では * とは別に ** でキーワード引数を受け取る必要がある
  def initialize(*, **)
    super

    # その他の初期化処理
  end
end

DVD.new('A great movie', price: 1000)
#=> name: A great movie, price: 1000