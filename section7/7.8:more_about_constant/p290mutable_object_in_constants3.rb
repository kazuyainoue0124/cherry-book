# 破壊的な変更を防ぐために定数をfreezeする
class Product
  # 配列を凍結する
  SOME_NAMES = ['Foo', 'Bar', 'Baz'].freeze

  def self.names_without_foo(names = SOME_NAMES)
    # freezeしている配列に対しては破壊的な変更はできない
    names.delete('Foo')
    names
  end
end

# エラーが発生するので予期せずに定数の値が変更される事故が防げる
puts Product.names_without_foo
#=> can't modify frozen Array: ["Foo", "Bar", "Baz"] (FrozenError)