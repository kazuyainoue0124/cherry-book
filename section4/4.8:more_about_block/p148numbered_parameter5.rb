# ブロックが入れ子でも番号指定パラメータの使われているブロックが1つならOK
sum = 0

[[1, 2, 3], [4, 5, 6]].each do |values|
  values.each do
    # 内側のブロックでしか番号指定パラメータを使ってないのでOK
    sum += _1
  end
end
puts sum #=> 21