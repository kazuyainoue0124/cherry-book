# Enumerableモジュールで定義されている代表的なメソッドは以下の通り
# map, select, find, count
# include先のクラスでeachメソッドが実装されていればEnumerableモジュールに定義されたメソッドを使える
# Enumerableモジュールはinclude先に実装されたeachメソッドを前提に作成されている

# 配列、ハッシュ、範囲でmapメソッドを使う
p [1, 2, 3].map { |n| n * 10 }                      #=> [10, 20, 30]
p ({ a: 1, b: 2, c: 3 }.map { |k, v| [k, v * 10] }) #=> [[:a, 10], [:b, 20], [:c, 30]]
p (1..3).map { |n| n * 10 }                         #=> [10, 20, 30]

# 配列、ハッシュ、範囲でcountメソッドを使う
p [1, 2, 3].count              #=> 3
p ({ a: 1, b: 2, c: 3 }.count) #=> 3 
p (1..3).count                 #=> 3