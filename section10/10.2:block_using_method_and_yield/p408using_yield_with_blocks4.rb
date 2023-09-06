# ブロックが渡されたかどうかを確認する場合はblock_given?メソッドを使う
def greet
  puts 'おはよう'
  # ブロックの有無を確認してからyieldを呼び出す
  if block_given?
    yield
  end
  puts 'こんばんは'
end

greet
#=> おはよう
#   こんばんは

greet do
  puts 'こんにちは'
end
#=> おはよう
#   こんにちは
#   こんばんは