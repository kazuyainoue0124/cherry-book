# match?メソッドは文字列が正規表現にマッチすればtrue, しなければfalseを返す
# 組み込み変数やRegexp.last_matchメソッドの内容を書き換えないため、より高速に動作する

# マッチすればtrueを返す
puts /\d{3}-\d{4}/.match?('123-4567') #=> true

# マッチしても組み込み変数やRegexp.last_matchを書き換えない
puts $~                #=> nil
puts Regexp.last_match #=> nil

# 文字列と正規表現を入れ替えてもOK
puts '123-4567'.match?(/\d{3}-\d{4}/) #=> true