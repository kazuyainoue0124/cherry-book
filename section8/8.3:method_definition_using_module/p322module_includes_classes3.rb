# publicメソッドにする必要がなければモジュール側でprivateメソッドとして定義しておく
# そうするとincludeしたクラスでもそのメソッドがprivateメソッドとして扱われる
module Loggable
  # logメソッドはprivateメソッドにする
  private

  def log(text)
    puts "[LOG]#{text}"
  end
end

class Product
  include Loggable
  # 省略
end

product = Product.new
# logメソッドはprivateメソッドなので外部から呼び出せない
puts product.log 'public?'
#=> private method `log' called for #<Product:0x0000000102e40540> (NoMethodError)