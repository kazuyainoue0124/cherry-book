# with_indexメソッドはmapメソッド以外でも使える
fruits = ['apple', 'orange', 'melon']
# 名前に"a"を含み、なおかつ添え字が奇数である要素を削除する
pp fruits.delete_if.with_index { |fruit, i| fruit.include?('a') && i.odd? }
#=> ["apple", "melon"]