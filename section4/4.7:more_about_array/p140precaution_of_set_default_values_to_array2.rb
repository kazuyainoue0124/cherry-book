# Array.newで第二引数ではなくブロックでデフォルト値を設定すれば各要素が別々のオブジェクトを参照する

# ブロックを使って、ブロックの戻り値をデフォルト値とする
# (ブロックパラメータには添え字が渡されるが、ここでは使わないためブロックパラメータを省略)
a = Array.new(5) { 'default' }
pp a #=> ["default", "default", "default", "default", "default"]

# 1番目の要素を取得する
str = a[0]
pp str #=> "default"

# 1番目の要素を大文字に変換する（破壊的変更）
str.upcase!
pp str #=> "DEFAULT"

# 1番目の要素だけが大文字になり、他は変わらない
pp a #=> ["DEFAULT", "default", "default", "default", "default"]