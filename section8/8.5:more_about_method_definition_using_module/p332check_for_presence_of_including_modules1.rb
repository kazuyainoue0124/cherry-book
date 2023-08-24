# あるクラスにモジュールがincludeされているか確認する方法はいくつかある
module Loggable
  # 省略
end

class Product
  include Loggable
  # 省略
end

# クラスオブジェクトに対してinclude?メソッドを呼ぶと引数で渡したモジュールがincludeされているか判定する
p Product.include?(Loggable) #=> true
# クラスオブジェクトに対してincluded_modulesメソッドを呼ぶとincludeされているモジュールの配列が返る
p Product.included_modules #=> [Loggable, Kernel]
# クラスオブジェクトに対してancestorsメソッドを使うとスーパークラスの情報も配列になって返ってくる
p Product.ancestors #=> [Product, Loggable, Object, Kernel, BasicObject]