# rescueは修飾子としても使える
# 例外が発生しなければ元の処理の値が、発生した場合はrescue修飾子に書いた値が式全体の戻り値となる

# 例外が発生しない場合
puts (1 / 1 rescue 0) #=> 1

# 例外が発生する場合
puts (1 / 0 rescue 0) #=> 0