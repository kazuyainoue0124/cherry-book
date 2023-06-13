# splitメソッドを使って人名をスペースで２分割するが、使うのはファーストネームだけ
# ラストネームは使わないので変数名をアンダースコア始まりにする
first_name, _last_name = 'Scott Tiget'.split(' ')
puts first_name # Scott

# このバリエーションとして変数名をアンダースコア1文字にしてしまうケースもある
first_name, _ = 'Scott Tiger'.split(' ')
puts first_name