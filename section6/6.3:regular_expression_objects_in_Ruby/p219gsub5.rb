# gsubメソッドはキャプチャと組み合わせて文字列を置換することもできる
# キャプチャを使う場合、第2引数に文字列で指定する方法とブロックと組み込み変数を使う方法の2種類がある

# 第2引数に文字列で指定する場合は\1や\2のようにキャプチャした文字列を連番で参照できる
text = '私の誕生日は1977年7月17日です。'
# \1や\2を第2引数に指定する場合は文字列をシングルクオートかダブルクオートで囲んで書く
# (ダブルクオートで囲む場合は\\1のようにエスケープしないとダメ)
puts text.gsub(/(\d+)年(\d+)月(\d+)日/, '\1-\2-\3')
#=> "私の誕生日は1977-7-17です。"