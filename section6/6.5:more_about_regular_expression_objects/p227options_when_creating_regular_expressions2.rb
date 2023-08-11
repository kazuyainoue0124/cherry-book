# mオプションを付けると任意の文字を表すドット(.)が改行文字にもマッチする
# mオプションがないと.は改行文字にマッチしない
puts "Hello\nBye" =~ /Hello.Bye/  #=> nil

# mオプションを付けると.が改行文字にもマッチする
puts "Hello\nBye" =~ /Hello.Bye/m #=> 0

# Regexp.newを使う場合は、Regexp::MULTILINEという定義を渡す
regexp = Regexp.new('Hello.Bye', Regexp::MULTILINE)
puts "Hello\nBye" =~ regexp       #=> 0