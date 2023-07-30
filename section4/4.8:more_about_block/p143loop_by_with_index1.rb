# with_indexメソッドを使えばmapメソッドにも添え字を組み合わせられる
fruits = ['apple', 'orange', 'melon']

# mapとして処理しつつ、添え字も受け取る
pp fruits.map.with_index { |fruit, i| "#{i}: #{fruit}" }
#=> ["0: apple", "1: orange", "2: melon"]