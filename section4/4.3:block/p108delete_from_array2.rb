a = [1, 2, 3, 1, 2, 3]

# 配列から値が奇数の要素を削除する
a.delete_if do |n|
  n.odd?
end
# ブロックの戻り値は最後に評価された式

puts a #=> [2, 2]