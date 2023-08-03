# 配列の多重代入が便利に使える例

# divmodメソッドは商と余りを配列で返す
puts 14.divmod(3) #=> [4, 2]

# 戻り値を配列のまま受け取る
quo_rem = 14.divmod(3)
puts "商=#{quo_rem[0]}, 余り=#{quo_rem[1]}" #=> 商=4, 余り=2

# 多重代入で別々の変数として受け取る
quotient, remainder = 14.divmod(3)
puts "商=#{quotient}, 余り=#{remainder}" #=> 商=4, 余り=2