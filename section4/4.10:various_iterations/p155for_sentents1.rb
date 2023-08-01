# 配列やハッシュはfor文で繰り返し処理できる
numbers = [1, 2, 3, 4]
sum = 0
for n in numbers
  sum += n
end
puts sum #=> 10

# doを入れて1行で書くことも可能
sum = 0
for n in numbers do sum += n end
puts sum #=> 10