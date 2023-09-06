# ブロックが渡されたかどうかは、その引数がnilかどうかで判断できる
def greet(&block)
  puts 'おはよう'
  # ブロックが渡されていなければblockはnil
  unless block.nil?
    text = block.call('こんにちは')
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