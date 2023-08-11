# iオプションを付けると大文字小文字を区別しない
puts 'HELLO' =~ /hello/i   #=> 0

# %rを使った場合も最後にオプションを付けられる
puts 'HELLO' =~ %r{hello}i #=> 0

# Regexp.newを使う場合は、Regexp::IGNORECASEという定義を渡す
regexp = Regexp.new('hello', Regexp::IGNORECASE)
puts 'HELLO' =~ regexp     #=> 0