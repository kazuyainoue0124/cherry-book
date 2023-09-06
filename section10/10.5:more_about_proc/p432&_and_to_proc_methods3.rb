# シンボルもto_procメソッドを持つ

# :splitというシンボルをto_procでProcオブジェクトに変換
split_proc = :split.to_proc
p split_proc #=> #<Proc:0x0000000102e90a90(&:split) (lambda)>

# このProcオブジェクトに引数を1つ渡して実行すると、1つ目の引数をレシーバにし、
# そのレシーバに対して元のシンボルと同じ名前のメソッドを呼び出す
# 'a-b-c-d e'.splitと同じ(ホワイトスペースで分割する)
p split_proc.call('a-b-c-d e') #=> ["a-b-c-d", "e"]