# 配列やハッシュはfor文で繰り返し処理できる
numbers = [1, 2, 3, 4]
sum = 0
for n in numbers
  sum += n
end
puts sum #=> 10