# 配列やハッシュをfreezeしても配列やハッシュの各要素はfreezeしないため、要素を指定されると変更されてしまう
class Product
  # 配列はfreezeされるが中身の文字列はfreezeされない
  SOME_NAMES = ['Foo', 'Bar', 'Baz'].freeze
end
# 1番目の要素を破壊的に大文字に変更する
Product::SOME_NAMES[0].upcase!
# 1番目の要素の値が変わってしまった！
p Product::SOME_NAMES #=> ["FOO", "Bar", "Baz"]