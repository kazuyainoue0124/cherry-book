# 文字列が左辺、正規表現が右辺の場合、キャプチャの名前がローカル変数にならない
text = '私の誕生日は1977年7月17日です。'
# 正規表現が右辺にくるとローカル変数が作成されない
if text =~ /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/
  puts "#{year}/#{month}/#{day}"
end
#=> undefined local variable or method `year' for main:Object (NameError)