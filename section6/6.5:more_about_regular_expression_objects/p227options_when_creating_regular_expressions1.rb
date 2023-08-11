# iオプションを付けると大文字小文字を区別しない
puts 'HELLO' =~ /hello/i   #=> 0

# %rを使った場合も最後にオプションを付けられる
puts 'HELLO' =~ %r{hello}i #=> 0