# Procクラスはブロックをオブジェクト化するためのクラス
# Procクラスはブロック、つまり「何らかの処理（何らかの手続き）」を表す

# "Hello!"という文字列を返すProcオブジェクトを作成する
hello_proc = Proc.new do
  'Hello!'
end

# do ... endの代わりに{}を使っても良い
hello_proc = Proc.new { 'Hello!' }