# ブロックを引数として渡す際に使う&は内部的に、to_procメソッドを呼んでProcオブジェクトを取得している
# ただし元々Procオブジェクトだった場合はto_procメソッドを呼んでも自分自身が返るだけ
reverse_proc = Proc.new { |s| s.reverse }
other_proc = reverse_proc.to_proc
# Procオブジェクトに対してto_procメソッドを呼んでも自分自身が返るだけ
puts reverse_proc.equal?(other_proc) #=> true