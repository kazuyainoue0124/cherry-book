numbers = [1, 2, 3, 4, 5, 6]

# ブロックの戻り値が最初に真になった要素を返す
even_numbers = numbers.find { |n| n.even? }
puts even_numbers #=> 2

# findメソッドのエイリアスメソッドはdetectメソッド