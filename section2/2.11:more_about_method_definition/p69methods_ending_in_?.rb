# 空文字列であればtrue、そうでなければfalse
puts ''.empty?
puts 'abc'.empty?

# 引数の文字列が含まれていればtrue、そうでなければfalse
puts 'watch'.include?('at')
puts 'watch'.include?('in')

# 奇数ならtrue、偶数ならfalse
puts 1.odd?
puts 2.odd?

# 偶数ならtrue、奇数ならfalse
puts 1.even?
puts 2.even?

# オブジェクトがnilであればtrue、そうでなければfalse
puts nil.nil?
puts 'abc'.nil?
puts 1.nil?