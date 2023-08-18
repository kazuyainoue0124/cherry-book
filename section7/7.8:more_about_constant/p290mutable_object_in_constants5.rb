# 各要素の変更も防ごうと思うと、要素毎にfreezeするしかなくなる
class Product
  # 中身の文字列もfreezeする
  SOME_NAMES = ['Foo'.freeze, 'Bar'.freeze, 'Baz'.freeze].freeze
end
# 今度は中身もfreezeしているので破壊的な変更はできない
Product::SOME_NAMES[0].upcase!
#=> can't modify frozen String: "Foo" (FrozenError)