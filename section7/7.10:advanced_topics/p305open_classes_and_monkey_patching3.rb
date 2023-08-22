# Ruby on Railsではオープンクラスを積極的に活用し、さまざまな独自の便利メソッドを組み込みクラスに追加している(以下は一例)

# 文字列をキャメルケースからスネークケースに変換する
'MyString'.underscore #=> "my_string"

# レシーバが引数の配列に含まれていればtrueを返す
numbers = [1, 2, 3]
2.in?(numbers) #=> true
5.in?(numbers) #=> false