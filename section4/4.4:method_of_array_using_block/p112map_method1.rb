# 空の配列を用意し他の配列をループした結果を空の配列に詰め込む処理の大半はmapメソッドで置き換えられる
numbers = [1, 2, 3, 4, 5]
new_numbers = []

numbers.each { |n| new_numbers << n * 10 }
puts new_numbers #=> [10, 20, 30, 40, 50]