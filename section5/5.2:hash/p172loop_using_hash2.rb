# ブロックパラメータを1つにするとキーと値が配列に格納される
currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

# key_valueはキーと値を格納した配列になる
currencies.each do |key_value|
  key = key_value[0]
  value = key_value[1]
  puts "#{key} : #{value}"
end
#=> japan : yen
#   us : dollar
#   india : rupee