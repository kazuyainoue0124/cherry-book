# ミックスインする際はincludeの代わりにprependも使える
# prependを使うと同名のメソッドがあった場合にミックスインしたクラスよりも先にモジュールのメソッドが呼ばれる
module A
  def to_s
    "<A> #{super}"
  end
end

class Product
  # includeではなくprependを使う
  prepend A

  def to_s
    "<Product> #{super}"
  end
end

product = Product.new
# prependを使うと先にモジュールAのto_sメソッドが呼ばれる
puts product.to_s   #=> "<A> <Product> #<Product:0x00000001050b03c8>"
p Product.ancestors #=> [A, Product, Object, Kernel, BasicObject]

# prependではなくincludeでモジュールAをミックスインした場合
puts product.to_s   #=> "<Product> <A> #<Product:0x00000001050b03c8>"
p Product.ancestors #=> [Product, A, Object, Kernel, BasicObject]