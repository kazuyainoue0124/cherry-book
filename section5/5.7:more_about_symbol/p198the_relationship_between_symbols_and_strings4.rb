# メソッドによっては文字列とシンボルを同等に扱う、例えばrespond_to?メソッド

# respond_to?メソッドの引数には文字列とシンボルの両方を渡せる
puts 'apple'.respond_to?('include?') #=> true
puts 'apple'.respond_to?(:include?)  #=> true

puts 'apple'.respond_to?('foo_bar') #=> false
puts 'apple'.respond_to?(:foo_bar)  #=> false