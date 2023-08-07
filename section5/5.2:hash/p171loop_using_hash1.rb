# eachメソッドを使うとキーと値の組み合わせを順番に取り出せる
currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

# ブロックパラメータがキーと値で2つになる
currencies.each do |key, value|
  puts "#{key} : #{value}"
end
#=> japan : yen
#   us : dollar
#   india : rupee