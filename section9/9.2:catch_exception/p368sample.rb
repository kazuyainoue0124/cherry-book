# 例外が発生するとそれ以降のプログラムは実行されない
puts 'Start.'
1 + '10' #=> String can't be coerced into Integer (TypeError)
# 上の行で例外が発生するため、ここから下は実行されない
puts 'End.'