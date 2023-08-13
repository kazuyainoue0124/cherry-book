# クラスの中には定数を定義できる
# 定数は必ず大文字で始める
# 慣習的にアルファベットの大文字と数字、アンダースコアで構成されることが多い
class Product
  # デフォルトの価格を定数として定義する
  DEFAULT_PRICE = 0

  attr_reader :name, :price

  # 第2引数priceのデフォルト値を定数DEFAULT_PRICE（つまり0）とする
  def initialize(name, price = DEFAULT_PRICE)
    @name = name
    @price = price
  end
end

product = Product.new('A free movie')
puts product.price #=> 0