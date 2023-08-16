# 引数が(*)だけのメソッド定義の意図1：superメソッドに引数をそのまま全部渡す
# メソッド内でsuperキーワードが使われていた場合は
# 「このメソッドでは引数を使わないが、superメソッド（スーパークラスのメソッド）で必要になるので、渡された引数をそのままsuperメソッドに渡す」
# という意味になる
class Product
  def initialize(name, price)
    puts "name: #{name}, price: #{price}"
  end
end

class DVD < Product
  # initialize(name, price)としてもいいが、このメソッドでは引数を使わないので
  # 可変長引数としていったん任意の引数を受け取り、それをそのままsuperメソッドに渡す
  def initialize(*)
    super

    # その他の初期化処理
  end
end

DVD.new('A great movie', 1000)
#=> name: A great movie, price: 1000