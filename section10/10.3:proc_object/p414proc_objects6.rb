# ProcオブジェクトはJavaScriptにおける関数オブジェクトのようなもの

# RubyでProcオブジェクトを作成し、その処理を呼び出す
add_proc = Proc.new { |a, b| a + b }
add_proc.call(10, 20) #=> 30

# JavaScriptで関数オブジェクトを作成し、その処理を呼び出す
const addProc = (a, b) => a + b
addProc(10, 20) #=> 30