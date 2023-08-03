numbers = [1, 2, 3, 4]
sum = 0

# ブロックをあえて改行せずに書く
numbers.each do |n| sum += n end

puts sum #=> 10