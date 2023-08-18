# イミュータブルなオブジェクトはそもそも破壊的な変更ができないためfreeze不要
class Product
  # 数値やシンボル、true/falseはfreeze不要（しても構わないが、意味がない）
  SOME_VALUE = 0
  SOME_TYPE = :foo
  SOME_FLAG = true
end