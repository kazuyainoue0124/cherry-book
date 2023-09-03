# getsメソッドを呼ぶとプログラムはユーザの入力を待つ
input = gets
# ターミナルでHelloと入力
p input #=> "Hello\n"

# getsメソッドだけだと改行文字（\n）が含まれてしまうためchompメソッドで改行文字を削除する
input = gets.chomp
# ターミナルでHelloと入力
p input #=> "Hello"