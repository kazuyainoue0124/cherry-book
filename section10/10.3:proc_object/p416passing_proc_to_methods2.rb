# ブロックを直接渡さずに、あらかじめ作成したProcオブジェクトをメソッドの引数として渡す
def greet(&block)
  puts 'おはよう'
  text = block.call('こんにちは')
  puts text
  puts 'こんばんは'
end

# Procオブジェクトを作成し、それをブロックの代わりとしてgreetメソッドに渡す
repeat_proc = Proc.new { |text| text * 2 }
greet(&repeat_proc)
#=> おはよう
#   こんにちはこんにちは
#   こんばんは