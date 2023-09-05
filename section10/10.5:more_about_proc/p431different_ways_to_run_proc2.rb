# ===を使ってProcオブジェクトを呼び出すこともできる
add_proc = Proc.new { |a, b| a + b }
puts add_proc === [10, 20]