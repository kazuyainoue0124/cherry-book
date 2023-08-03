# Arrayクラス、Rangeクラス、Enumeratorクラスは全てEnumerableモジュールをincludeしている
# そのためどのクラスもEnumerableモジュールのメソッドが使える
puts [1, 2, 3].class                 #=> Array
puts Array.include?(Enumerable)      #=> true

puts (1..3).class                    #=> Range
puts Range.include?(Enumerable)      #=> true

puts 1.upto(3).class                 #=> Enumerator
puts Enumerator.include?(Enumerable) #=> true