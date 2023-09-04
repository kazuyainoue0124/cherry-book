# 単純な呼び出しではProc.newもラムダも引数の扱いは同じ

# Proc.newの作成と実行
add_proc = Proc.new { |a, b| a + b }
puts add_proc.call(10, 20)   #=> 30
# ラムダの作成と実行
add_lambda = -> (a, b) { a + b }
puts add_lambda.call(10, 20) #=> 30