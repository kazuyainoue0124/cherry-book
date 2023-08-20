# ダックタイピングの考え方に基づくと、静的型付け言語で見られる抽象クラスと具体クラスの区別もなくなる
# Productクラスが抽象クラスでDVDクラスが具体クラスだと見分ける構文は存在しない
# あくまでもRubyが気にするのはstock?メソッドが呼び出せるかどうか
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
end

class DVD < Product
  # 在庫があればtrueを返す
  def stock?
    # (本当はデータベースに問い合わせるなどの処理が必要だがここでは省略)
    true
  end
end

product = Product.new('A great film', 1000)
# スーパークラスはstock?メソッドを持たないのでエラーが起きる
puts product.display_text
#=> undefined method `stock?' for #<Product:0x000000010123f850 @name="A great film", @price=1000> (NoMethodError)

dvd = DVD.new('An awesome film', 3000)
# サブクラスはstock?メソッドを持つのでエラーが起きない
puts dvd.display_text
#=> "商品名: An awesome film 価格: 3000円 在庫: あり"