# クラスの可視性をprivateにしたい場合はprivate_constantを使う
# Rubyではクラスも定数名として扱われるためprivate_constantを適用できる
class Foo
  class Bar
    # 省略
  end

  # Barクラスの可視性をprivateにする
  private_constant :Bar
end

# Barクラスはprivateなクラスになったため、Fooクラスの外からは参照できない
Foo::Bar.new
#=> private constant Foo::Bar referenced (NameError)