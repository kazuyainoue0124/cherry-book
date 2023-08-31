# is_a?メソッドを使えば直接インスタンスに対して自クラスがそのモジュールをincludeしているか分かる
module Loggable
  # 省略
end

class Product
  include Loggable
  # 省略
end

product = Product.new
# 引数が自クラス、includeしているモジュール、スーパークラスのいずれかに該当すればtrue
p product.is_a?(Product)  #=> true
p product.is_a?(Loggable) #=> true
p product.is_a?(Object)   #=> true