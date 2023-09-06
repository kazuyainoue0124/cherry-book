# ProcクラスのインスタンスがProc.newで作られたのか、ラムダで作られたかの判断にはlambda?メソッドを使う

# Proc.newの場合
add_proc = Proc.new { |a, b| a + b }
puts add_proc.class    #=> Proc
puts add_proc.lambda?  #=> false

# ラムダの場合
add_lambda = ->(a, b) { a + b }
puts add_lambda.class   #=> Proc
puts add_lambda.lambda? #=> true