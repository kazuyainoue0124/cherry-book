# シンボルもto_procメソッドを持つ

# :splitというシンボルをto_procでProcオブジェクトに変換
split_proc = :split.to_proc
p split_proc #=> #<Proc:0x0000000102e90a90(&:split) (lambda)>