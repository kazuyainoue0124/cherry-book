# クラスオブジェクトだけでなくクラスのインスタンスからもincludeされている情報を取得できる
module Loggable
  # 省略
end

class Product
  include Loggable
  # 省略
end

product = Product.new
# product.classはProductクラスを返す
p product.class.include?(Loggable) #=> true
p product.class.included_modules   #=> [Loggable, Kernel]