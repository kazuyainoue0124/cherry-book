numbers = [1, 2, 3, 4]
sum = 0

# {}でブロックを作り、なおかつ改行を入れる
numbers.each { |n|
  sum += n
}
puts sum #=> 10