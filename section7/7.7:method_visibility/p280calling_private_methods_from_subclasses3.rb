# nameをprivateメソッドとして定義する
class Product
  private

  def name
    'A great movie'
  end
end

# nameをpublicメソッドとしてオーバーライドする
class DVD < Product
  public

  def name
    'An awesome film'
  end
end

# Productクラスのnameメソッドは呼び出せない
product = Product.new
puts product.name
#=> private method `name' called for #<Product:0x00000001051a02b0> (NoMethodError)

# DVDクラスのnameメソッドは呼び出せる
dvd = DVD.new
puts dvd.name
#=> "An awesome film"