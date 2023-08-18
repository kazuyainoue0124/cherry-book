# Rubyの場合わざわざfreezeを呼ぶケースは少ない
class Product
  DEFAULT_PRICE = 0
  # freezeすれば再代入を防止できるが、デメリットの方が大きいので普通はしない
  freeze
  DEFAULT_PRICE = 1000 #=> can't modify frozen #<Class:Product>: Product (FrozenError)
end