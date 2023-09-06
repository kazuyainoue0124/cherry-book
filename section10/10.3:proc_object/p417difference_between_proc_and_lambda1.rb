# Procオブジェクトを作る方法は4つある

# Proc.newまたはprocメソッドでProcオブジェクトを作成する
Proc.new { |a, b| a + b }
proc { |a, b| a + b }

# ->構文またはlambdaメソッドでProcオブジェクトを作成する
->(a, b) { a + b }
lambda { |a, b| a + b }