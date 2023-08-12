# マッチしなければtrue
puts 'hello' !~ /\d{3}-\d{4}/    #=> true

# マッチすればfalse
puts '123-4567' !~ /\d{3}-\d{4}/ #=> false