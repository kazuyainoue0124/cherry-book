# Rubyでは1つのクラスは1つのスーパークラスしか持てない
# is-aの関係になくても複数のクラスにまたがって同じような機能が必要になるケースも多い
class Product
  def title
    log 'title is called.'
    'A great movie'
  end

  private

  def log(text)
    # 本来であれば標準ライブラリのLoggerクラスなどを使うべきだが、簡易的にputsで済ませる
    puts "[LOG]#{text}"
  end
end

class User
  def name
    log 'name is called.'
    'Alice'
  end

  private

  # このメソッドの実装はProductクラスのlogメソッドとまったく同じ
  def log(text)
    puts "[LOG]#{text}"
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