# nからmまで数値を1つずつ減らしながら処理したいときはIntegerクラスのdowntoメソッドを使うと便利

a = []
14.downto(10) { |n| a << n }
p a #=> [14, 13, 12, 11, 10]