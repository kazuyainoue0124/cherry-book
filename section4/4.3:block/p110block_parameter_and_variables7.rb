numbers = [1, 2, 3, 4]
sum = 0
sum_value = 100

# ブロックの外にもsum_valueはあるがブロック内ではブロックパラメータのsum_valueが優先される
numbers.each do |sum_value|
  sum += sum_value
end

puts sum #=> 10

# ブロックを抜けると3行目で定義したsum_valueを再び参照できる
puts sum_value #=> 100

# 名前の重複により他の変数やメソッドが参照できなくなることをシャドーイングという