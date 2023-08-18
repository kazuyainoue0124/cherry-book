# 各要素の変更も防ごうと思うと、要素毎にfreezeするしかなくなる
class Product
  # 中身の文字列もfreezeする
  # SOME_NAMES = ['Foo'.freeze, 'Bar'.freeze, 'Baz'.freeze].freeze
  # mapメソッドで各要素をfreezeし、最後にmapメソッドの戻り値の配列をfreezeする
  SOME_NAMES = ['Foo', 'Bar', 'Baz'].map(&:freeze).freeze
end
# 今度は中身もfreezeしているので破壊的な変更はできない
Product::SOME_NAMES[0].upcase!
#=> can't modify frozen String: "Foo" (FrozenError)