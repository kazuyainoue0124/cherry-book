# is-a関係でないため継承は使えないが、機能を共通化したい、という場合の選択肢の1つがmodule
# モジュールをクラスにincludeして機能を追加することをミックスインという
# ミックスイン先のクラスはどんなクラスでもOK、1つのクラスに複数のモジュールをミックスインしてもOK

# ログ出力用のメソッドを提供するモジュール
# 「ログ出力できる（log + able）」という意味でLoggableという名前を付けた
module Loggable
  def log(text)
    puts "[LOG]#{text}"
  end
end


class Product
  # 上で作ったモジュールをincludeする
  include Loggable

  def title
    # logメソッドはLoggableモジュールで定義したメソッド
    log 'title is called.'
    'A great movie'
  end
end

class User
  # こちらも同じようにincludeする
  include Loggable

  def name
    # Loggableモジュールのメソッドが使える
    log 'name is called.'
    'Alice'
  end
end

product = Product.new
puts product.title
#=> [LOG]title is called.
#   A great movie

user = User.new
puts user.name
#=> [LOG]name is called.
#   Alice