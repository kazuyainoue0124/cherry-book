# yieldを使うと渡されたブロックを実行できる
def greet
  puts 'おはよう'
  # ここでブロックの処理を呼び出す
  yield
  puts 'こんばんは'
end

# ブロック付きでgreetメソッドを呼び出す
greet do
  puts 'こんにちは'
end
#=> おはよう
#   こんにちは
#   こんばんは