# 引数にデフォルト値や可変長引数、キーワード引数なども設定できる
add_proc = Proc.new { |a = 0, b = 0| a + b }
puts add_proc.call         #=> 0
puts add_proc.call(10)     #=> 10
puts add_proc.call(10, 20) #=> 30