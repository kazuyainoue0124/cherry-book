# gsub!メソッドは文字列の内容を破壊的に置換する
text = '123,456-789'
text.gsub!(/,|-/, ':')
puts text #=> 123:456:789