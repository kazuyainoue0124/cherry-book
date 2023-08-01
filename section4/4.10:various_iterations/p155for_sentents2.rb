# for文の中で作成したローカル変数はfor文の外でも使える
numbers = [1, 2, 3, 4]

sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
# ブロックパラメータやブロック内で作成した変数はブロックの外では参照できない
puts n         #=> undefined local variable or method `n' for main:Object (NameError)
puts sum_value #=> undefined local variable or method `sum_value' for main:Object (NameError)

sum = 0
for n in numbers
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
# for文で作成された変数はfor文の外でも参照できる
puts n         #=> 4
puts sum_value #=> 40