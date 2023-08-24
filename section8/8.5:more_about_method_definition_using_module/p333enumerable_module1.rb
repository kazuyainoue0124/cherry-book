# Enumerableモジュールは配列やハッシュ、範囲(Range)など何かしらの繰り返し処理ができるクラスにincludeされているモジュール
puts Array.include?(Enumerable) #=> true
puts Hash.include?(Enumerable)  #=> true
puts Range.include?(Enumerable) #=> true