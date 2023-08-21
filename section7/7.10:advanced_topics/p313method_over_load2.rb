# 引数の個数については引数のデフォルト値や可変長引数を使うことで、
# メソッド呼び出し時の引数の個数を柔軟に変えられる

# 引数にデフォルト値を付ける
def add_numbers(a = 0, b = 0)
  a + b
end

# 引数の個数はゼロでも1個でも2個でも良い
puts add_numbers       #=> 0
puts add_numbers(1)    #=> 1
puts add_numbers(1, 2) #=> 3