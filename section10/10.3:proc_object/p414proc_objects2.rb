# Procオブジェクトを実行したい場合はcallメソッドを使う

# "Hello!"という文字列を返すProcオブジェクトを作成する
hello_proc = Proc.new { 'Hello!' }
# Procオブジェクトを実行する（文字列が返る）
puts hello_proc.call #=> "Hello!"