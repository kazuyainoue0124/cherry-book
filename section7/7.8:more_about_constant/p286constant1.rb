# 定数はクラスの外部から直接参照することも可能
# 「クラス名::定数名」の形式で外部から参照できる
class Product
  DEFAULT_PRICE = 0
end

puts Product::DEFAULT_PRICE #=> 0