# 論理否定の演算子!を2回重ねると元の値に対応する真偽値に変換される
puts !!true  #=> true
puts !!1     #=> true
puts !!false #=> false
puts !!nil   #=> false