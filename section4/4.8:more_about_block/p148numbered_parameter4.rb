# ブロックが入れ子になっている場合、番号指定パラメータが2つ以上のブロックで使われるとエラーになる
sum = 0

[[1, 2, 3], [4, 5, 6]].each do
  # 外側のブロックで番号指定パラメータを使う
  _1.each do
    # 内側のブロックでも番号指定パラメータを使おうとするとエラーになる
    sum += _1
  end
end
#=> numbered parameter is already used in (SyntaxError)