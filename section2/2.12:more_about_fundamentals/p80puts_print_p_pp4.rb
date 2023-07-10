# pメソッドではネストした配列が横並びになってしまい確認しづらい
p Encoding.aliases.take(10)

# ppメソッドを使うと配列が見やすく整形される
pp Encoding.aliases.take(10)