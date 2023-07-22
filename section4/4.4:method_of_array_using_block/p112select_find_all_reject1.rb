numbers = [1, 2, 3, 4, 5, 6]

# ブロックの戻り値が真になった要素だけが集められる
even_numbers = numbers.select { |n| n.even? }
puts even_numbers #=> [2, 4, 6]

# selectメソッドのエイリアスメソッドはfind_allメソッド