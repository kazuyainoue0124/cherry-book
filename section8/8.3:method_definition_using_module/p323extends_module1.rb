# extendを使うとモジュール内のメソッドをそのクラスの特異メソッド（つまりクラスメソッド）にできる
# モジュールの定義はincludeするときと同じ
module Loggable
  def log(text)
    puts "[LOG]#{text}"
  end
end

class Product
  # Loggableモジュールのメソッドを特異メソッド（クラスメソッド）として追加する
  extend Loggable

  def self.create_products(names)
    # logメソッドをクラスメソッド内で呼び出す
    # (つまりlogメソッド自体もクラスメソッドになっている)
    log 'create_products is called.'
    # ほかの実装は省略
  end
end

# クラスメソッド経由でlogメソッドが呼び出される
puts Product.create_products([]) #=> [LOG]create_products is called.

# Productクラスのクラスメソッドとして直接呼び出すことも可能
puts Product.log('hello')        #=> [LOG]hello