# ダックタイピングの考え方により、include先のクラスに存在するメソッドを前提に、モジュールを定義できる
module Taggable
  def price_tag
    # priceメソッドはinclude先で定義されているはず、という前提
    "#{price}円"
  end
end

class Product
  include Taggable

  def price
    1000
  end
end

product = Product.new
puts product.price_tag #=> "1000円"