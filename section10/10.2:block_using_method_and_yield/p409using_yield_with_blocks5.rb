# yieldはブロックに引数を渡したりブロックの戻り値を受け取ったりできる
def greet
  puts 'おはよう'
  # ブロックに引数を渡し、戻り値を受け取る
  text = yield 'こんにちは'
  # ブロックの戻り値をターミナルに出力する
  puts text
  puts 'こんばんは'
end

greet do |text|
  # yieldで渡された文字列（"こんにちは"）を2回繰り返す
  text * 2
end
#=> おはよう
#   こんにちはこんにちは
#   こんばんは