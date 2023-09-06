# Procオブジェクトをブロックとして渡したい場合は引数の前に&を付ける必要がある
reverse_proc = Proc.new { |s| s.reverse }
# mapメソッドにブロックを渡す代わりに、Procオブジェクトを渡す（ただし&が必要）
p ['Ruby', 'Java', 'Python'].map(&reverse_proc)
#=> ["ybuR", "avaJ", "nohtyP"]