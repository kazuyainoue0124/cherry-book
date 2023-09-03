# yieldとブロックでやりとりする引数は個数の過不足に寛容
def greet
  puts 'おはよう'
  # 2個の引数をブロックに渡す
  text = yield 'こんにちは', 12345
  puts text
  puts 'こんばんは'
end

greet do |text|
  # ブロックパラメータが1つであれば、2つ目の引数は無視される
  text * 2 
end
#=> おはよう
#   こんにちはこんにちは
#   こんばんは

def greet
  puts 'おはよう'
  # 1個の引数をブロックに渡す
  text = yield 'こんにちは'
  puts text
  puts 'こんばんは'
end

greet do |text, other|
  # ブロックパラメータが2つであれば、2つ目の引数はnilになる
  text * 2 + other.inspect
end
#=> おはよう
#   こんにちはこんにちはnil
#   こんばんは