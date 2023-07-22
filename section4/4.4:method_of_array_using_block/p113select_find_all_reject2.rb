numbers = [1, 2, 3, 4, 5, 6]

# 3の倍数を除外する(3の倍数以外を集める)
non_multiple_of_three = numbers.reject { |n| n % 3 == 0 }
puts non_multiple_of_three #=> [1, 2, 4, 5]