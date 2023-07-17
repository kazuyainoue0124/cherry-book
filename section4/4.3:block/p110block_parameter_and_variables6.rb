numbers = [1, 2, 3, 4]
sum = 0

numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  # sumはブロックの外で作成されたのでブロックの内部でも参照可能
  sum += sum_value
end