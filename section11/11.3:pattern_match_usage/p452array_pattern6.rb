# in節に同じ変数名を2回以上使うと構文エラーになる
case [1, 2, 3]
in [a, a, 3]
  # 省略
end
#=> duplicated variable name (SyntaxError)

# 同じ値を同じ変数に代入しようとした場合も同様にエラーになる
case [1, 1, 3]
in [a, a, 3]
  # 省略
end
#=> duplicated variable name (SyntaxError)