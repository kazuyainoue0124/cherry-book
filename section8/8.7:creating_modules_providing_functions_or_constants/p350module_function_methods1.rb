# module_functionメソッドを使うと、ミックスインとしてもモジュールの特異メソッドとしても使えるメソッドを定義できる
module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end

  # logメソッドをミックスインとしても、モジュールの特異メソッドとしても使えるようにする
  # (module_functionは対象メソッドの定義よりも下で呼び出すこと)
  module_function :log
end

# モジュールの特異メソッドとしてlogメソッドを呼び出す
Loggable.log('Hello.') #=> [LOG] Hello.

# Loggableモジュールをincludeしたクラスを定義する
class Product
  include Loggable

  def title
    # includeしたLoggableモジュールのlogメソッドを呼び出す
    log 'title is called.'
    'A great movie'
  end
end

# ミックスインとしてlogメソッドを呼び出す
product = Product.new
product.title
#=> [LOG] title is called.
#   "A great movie"