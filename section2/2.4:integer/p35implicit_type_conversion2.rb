number = 3

# 文字列に数値を+演算子で連結することはできない
# puts 'Number is ' + number # no implicit conversion of Integer into String (TypeError)

# 数値を文字列に変換する必要がある
puts 'Number is ' + number.to_s