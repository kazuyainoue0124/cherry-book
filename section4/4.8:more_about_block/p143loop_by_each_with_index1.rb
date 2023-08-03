# each_with_indexメソッドを使うとブロックパラメータの第2パラメータに添え字を渡してくれる
fruits = ['apple', 'orange', 'melon']

# ブロックパラメータのiには0, 1, 2...と要素の添え字が入る
fruits.each_with_index { |fruit, i| puts "#{i}: #{fruit}" }
#=> 0: apple
#   1: orange
#   2: melon