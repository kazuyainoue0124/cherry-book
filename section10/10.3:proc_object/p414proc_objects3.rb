# 実行時に引数を利用するProcオブジェクトも定義できる
add_proc = Proc.new { |a, b| a + b }
puts add_proc.call(10, 20) #=> 30