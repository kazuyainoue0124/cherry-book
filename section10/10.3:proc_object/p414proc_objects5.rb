# Procオブジェクトを作成する場合はProc.newだけでなくKernelモジュールのprocメソッドでもOK

# Proc.newの代わりにprocメソッドを使う
add_proc = proc { |a, b| a + b }