# Rationalクラスを使うと小数ではなく「10分の3」という計算結果が返る
puts 0.1r * 3.0r # (3/10)

# Rationalクラスであれば期待したとおりに値の比較ができる
puts 0.1r * 3r == 0.3 # true

puts 0.1r * 3r <= 0.3 # true