# あるメソッドの中でそのメソッド自身をもう一度呼び出すことを再帰呼び出しという
# 再帰呼び出しも一種の繰り返し処理として使える
def factorial(n)
  # 引数の値を1減らして、factorialメソッド自身をもう一度呼び出す（一種の繰り返し処理）
  # 引数が0になったら1を返して繰り返し処理が終了する
  n > 0 ? n * factorial(n - 1) : 1
end
# 5! = 5 * 4 * 3 * 2 * 1を求める
puts factorial(5) #=> 120
# 0!は1
puts factorial(0) #=> 1