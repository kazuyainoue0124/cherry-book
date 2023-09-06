# 3種類のProcオブジェクトを受け取り、それぞれのあいさつ文字列に適用するgreetメソッド
def greet(proc_1, proc_2, proc_3)
  puts proc_1.call('おはよう')
  puts proc_2.call('こんにちは')
  puts proc_3.call('こんばんは')
end

# greetメソッドに渡すProcオブジェクトを用意する
shuffle_proc = Proc.new { |text| text.chars.shuffle.join }
repeat_proc = Proc.new { |text| text * 2 }
question_proc = Proc.new { |text| "#{text}?" }

# 3種類のProcオブジェクトをgreetメソッドに渡す
greet(shuffle_proc, repeat_proc, question_proc)
#=> うはよお
#   こんにちはこんにちは
#   こんばんは?