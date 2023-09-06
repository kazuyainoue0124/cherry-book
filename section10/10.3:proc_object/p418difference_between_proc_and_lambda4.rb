# ラムダはProc.newよりも引数のチェックが厳密になる

# Proc.newの場合（引数がnilでもエラーが起きないようにto_iメソッドを使う）
add_proc = Proc.new { |a, b| a.to_i + b.to_i }
# Proc.newは引数が1つでも3つでも呼び出しが可能
puts add_proc.call(10)     #=> 10
puts add_proc.call(10, 20) #=> 30

# ラムダの場合
add_lambda = ->(a, b) { a.to_i + b.to_i }
# ラムダは個数について厳密なので、引数が2個ちょうどでなければエラーになる
puts add_lambda.call(10)
#=> wrong number of arguments (given 1, expected 2) (ArgumentError)
puts add_lambda.call(10, 20)
#=> 30
puts add_lambda.call(10, 20, 30)
#=> wrong number of arguments (given 3, expected 2) (ArgumentError)