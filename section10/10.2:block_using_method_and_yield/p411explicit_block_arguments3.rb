# ブロックを引数として受け取る場合でもyieldやblock_given?は使用可能
def greet(&block)
  puts 'おはよう'
  # 引数のblockを使わずにblock_given?やyieldを使っても良い
  if block_given?
    text = yield 'こんにちは'
    puts text
  end
  puts 'こんばんは'
end

# ブロックなしで呼び出す
greet
#=> おはよう
#   こんばんは

# ブロック付きで呼び出す
greet do |text|
  text * 2
end
#=> おはよう
#   こんにちはこんにちは
#   こんばんは