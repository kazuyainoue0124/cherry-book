# 数値と文字列を+演算子で加算することはできない
# puts 1 + '10' # String can't be coerced into integer (TypeError)

# 文字列は数値に変換する必要がある
# 整数に変換
puts 1 + '10'.to_i

# 小数に変換
puts 1 + '10.5'.to_f