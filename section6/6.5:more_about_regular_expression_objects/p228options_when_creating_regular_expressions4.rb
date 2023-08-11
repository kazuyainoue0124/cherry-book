# 正規表現のオプションは同時に使える
# iオプションとmオプションを同時に使う
puts "HELLO\nBYE" =~ /Hello.Bye/im #=> 0

# Regexp.newを使う場合は | で連結する
regexp = Regexp.new('Hello.Bye', Regexp::IGNORECASE | Regexp::MULTILINE)
puts "HELLO\nBYE" =~ regexp        #=> 0