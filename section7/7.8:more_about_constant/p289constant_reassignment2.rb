# クラス外部からの再代入を防ぎたい場合はクラスをfreeze(凍結)する
class Product
  DEFAULT_PRICE = 0
end

# クラスを凍結する
Product.freeze

# freezeすると変更できなくなる
Product::DEFAULT_PRICE = 5000
#=> can't modify frozen #<Class:Product>: Product (FrozenError)