# Regexp.new(エイリアスメソッドはRegexp.compile)の引数にパターンの文字列を渡す方法
# /\d{3}-\d{4}/と書いた場合と同じ
Regexp.new('\d{3}-\d{4}')