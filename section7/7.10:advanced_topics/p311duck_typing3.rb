# 抽象クラス・具体クラスの区別がないためProductクラスでもstock?メソッドを定義し明示的なエラーを発生させる方がベター
class Product
  def initialize(name, price)
    @name = name
    @price = price
  end

  def display_text
    # stock?メソッドはサブクラスで必ず実装してもらう想定
    stock = stock? ? 'あり' : 'なし'
    "商品名: #{@name} 価格: #{@price}円 在庫: #{stock}"
  end

  def stock?
    # 「サブクラスでstock?メソッドを実装すること」というメッセージとともにエラーを発生させる
    raise 'must implement stock? in subclass.'
  end
end

class DVD < Product
  # 在庫があればtrueを返す
  def stock?
    # (本当はデータベースに問い合わせるなどの処理が必要だがここでは省略)
    true
  end
end

product = Product.new('A great film', 1000)
puts product.display_text
#=> must implement stock? in subclass. (RuntimeError)