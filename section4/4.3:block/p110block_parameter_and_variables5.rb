numbers = [1, 2, 3, 4]
sum = 0

numbers.each do |n|
  # sum_valueはブロック内で初めて登場した変数なのでブロック内でのみ有効
  sum_value = n.even? ? n * 10 : n
end

# ブロックの外に出るとsum_valueは参照できない
puts sum_value
#=> undefined local variable or method `sum_value` for main:Object(NameError)