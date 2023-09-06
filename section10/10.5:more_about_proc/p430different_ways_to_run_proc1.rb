# Procオブジェクトを実行する方法はcall以外にもいくつかある
add_proc = Proc.new { |a, b| a + b }

# callメソッドを使う
puts add_proc.call(10, 20)  #=> 30
# yieldメソッドを使う
puts add_proc.yield(10, 20) #=> 30
# .()を使う
puts add_proc.(10, 20)      #=> 30
# []を使う
puts add_proc[10, 20]       #=> 30