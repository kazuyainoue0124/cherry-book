# Array.newの第二引数を使うと、その配列の全ての要素が1つのオブジェクトを参照してしまう

# 要素が5つで'default'をデフォルト値とする配列を作成する
a = Array.new(5, 'default')
pp a #=> ["default", "default", "default", "default", "default"]

# 1番目の要素を取得する
str = a[0]
pp str #=> "default"

# 1番目の要素を大文字に変換する（破壊的変更）
str.upcase!
pp str #=> "DEFAULT"

# 配列の要素全てが大文字に変わってしまった！
pp a #=> ["DEFAULT", "DEFAULT", "DEFAULT", "DEFAULT", "DEFAULT"]