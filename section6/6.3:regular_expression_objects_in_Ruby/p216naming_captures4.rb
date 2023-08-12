# 正規表現オブジェクトをいったん変数に代入している場合、キャプチャの名前はローカル変数にならない
text = '私の誕生日は1977年7月17日です。'
regexp = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/
# 正規表現オブジェクトが変数に入っている場合も無効
if regexp =~ text
  puts "#{year}/#{month}/#{day}"
end
#=> undefined local variable or method `year' for main:Object (NameError)