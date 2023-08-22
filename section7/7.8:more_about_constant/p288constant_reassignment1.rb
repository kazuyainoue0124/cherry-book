# Rubyの定数は再代入ができてしまう（警告は表示されるがエラーにはならない）
class Product
  DEFAULT_PRICE = 0
  # 再代入して定数の値を書き換える
  DEFAULT_PRICE = 1000
end
#=> warning: already initialized constant Product::DEFAULT_PRICE

# 再代入後の値が返る
puts Product::DEFAULT_PRICE #=> 1000

# クラスの外部からでも再代入が可能
Product::DEFAULT_PRICE = 3000
#=> warning: already initialized constant Product::DEFAULT_PRICE

puts Product::DEFAULT_PRICE #=> 3000