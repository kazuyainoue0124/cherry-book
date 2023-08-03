# 範囲オブジェクトを直接include?メソッドで呼び出す時は範囲オブジェクトを()で囲む必要がある

# ()で囲まずにメソッドを呼び出すとエラーになる
puts 1..5.include?(1)   #=> undefined method `include?' for 5:Integer (NoMethodError)
# ()で囲めばエラーにならない
puts (1..5).include?(1) #=> true