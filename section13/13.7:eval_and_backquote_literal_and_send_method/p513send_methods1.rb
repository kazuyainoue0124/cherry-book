# sendメソッドはレシーバに対して指定したシンボル（または文字列）のメソッドを実行する
str = 'a,b,c'

# str.upcaseを呼ぶのと同じ
str.send(:upcase)     #=> "A,B,C"

# str.split(',')を呼ぶのと同じ
str.send(:split, ',') #=> ["a", "b", "c"]