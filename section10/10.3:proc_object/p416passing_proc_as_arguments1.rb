# 引数として渡すだけなら&はなくてもOK

# ブロックではなく、1個のProcオブジェクトを引数として受け取る（&を付けない）
def greet(arrange_proc)
  puts 'おはよう'
  text = arrange_proc.call('こんにちは')
  puts text
  puts 'こんばんは'
end

# Procオブジェクトを普通の引数としてgreetメソッドに渡す（&を付けない）
repeat_proc = Proc.new { |text| text * 2 }
greet(repeat_proc)
#=> おはよう
#   こんにちはこんにちは
#   こんばんは