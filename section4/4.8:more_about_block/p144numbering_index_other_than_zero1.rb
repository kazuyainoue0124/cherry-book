# 繰り返し処理中の添え字を0以外から始めたい場合、with_indexメソッドに引数を渡すとその数字から始まる
# each_with_indexメソッドでは添え字を指定できないため、each.with_indexと記述する
fruits = ['apple', 'orange', 'melon']

# eachで繰り返しつつ、1から始まる添え字を取得する
fruits.each.with_index(1) { |fruit, i| puts "#{i}: #{fruit}" }

# mapで処理しつつ、10から始まる添え字を取得する
p fruits.map.with_index(10) { |fruit, i| "#{i}: #{fruit}" }
#=> ["10: apple", "11: orange", "12: melon"]