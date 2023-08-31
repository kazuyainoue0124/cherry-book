# モジュールのメソッドを実行する際のselfはinclude先のクラスのインスタンスになる
# selfは付けても付けなくてもOK
module Taggable
  def price_tag
    # あえてselfを付けて呼び出しても良い
    # selfはinclude先のクラス（たとえばProductクラス）のインスタンスになる
    "#{self.price}円"
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