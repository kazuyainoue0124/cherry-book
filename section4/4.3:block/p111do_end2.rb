numbers = [1, 2, 3, 4]
sum = 0

# do ... endの代わりに{}を使う
numbers.each { |n| sum += n }
puts sum #=> 10