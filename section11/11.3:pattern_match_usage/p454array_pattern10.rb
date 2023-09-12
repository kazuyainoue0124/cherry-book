# *を使いたいが変数に入れなくて良い、という場合は変数名を省略できる
case [1, 2, 3, 4, 5]
in [1, *]
  # 最初の要素が1であればマッチ
  # 2番目以降の要素は任意だが、変数に入れなくて良い
  'matched'
end
#=> "matched"

# 上のコードは次のように*をなくしてカンマで終わらせてもOK
case [1, 2, 3, 4, 5]
in [1, ]
  'matched'
end
#=> "matched"