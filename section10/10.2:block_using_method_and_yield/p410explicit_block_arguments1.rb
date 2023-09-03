# ブロックを引数として受け取る場合は引数名の前に&を付ける
# 受け取ったブロックを実行する場合はcallメソッドを使う

# ブロックをメソッドの引数として使う
def greet(&block)
  puts 'おはよう'
  # callメソッドを使ってブロックを実行する
  text = block.call('こんにちは')
  puts text
  puts 'こんばんは'
end

greet do |text|
  text * 2
end
#=> おはよう
#   こんにちはこんにちは
#   こんばんは