# yieldを複数回書けばブロックも複数回呼ばれる
def greet
  puts 'おはよう'
  yield
  yield
  puts 'こんばんは'
end

greet do
  puts 'こんにちは'
end
#=> おはよう
#   こんにちは
#   こんにちは
#   こんばんは