# 定数をクラス外部から参照させたくない場合はprivate_constantで定数名を指定する
# 実務ではわざわざprivateに指定されてないケースも多い
class Product
  DEFAULT_PRICE = 0
  # 定数をprivateにする
  private_constant :DEFAULT_PRICE
end

# privateなのでクラスの外部からは参照できない
puts Product::DEFAULT_PRICE
#=> private constant Product::DEFAULT_PRICE referenced (NameError)