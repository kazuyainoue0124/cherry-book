# スーパークラスのprivateメソッドをサブクラスでオーバーライドできる
class Product
  def to_s
    # nameは常に"A great movie"になる、とは限らない
    "name: #{name}"
  end

  private

  def name
    'A great movie'
  end
end

class DVD < Product
  private

  # スーパークラスのprivateメソッドをオーバーライドする
  def name
    'An awesome film'
  end
end

product = Product.new
# Productクラスのnameメソッドが使われる
puts product.to_s #=> "name: A great movie"

dvd = DVD.new
# オーバーライドしたDVDクラスのnameメソッドが使われる
puts dvd.to_s     #=> "name: An awesome film"