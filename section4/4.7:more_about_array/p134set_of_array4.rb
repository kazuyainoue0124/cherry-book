# 本格的な集合演算をする場合は配列よりもSetクラスを使うべき
# Ruby3.2ではSetクラスを使うのにrequireは不要
# require 'set'

a = Set[1, 2, 3]
b = Set[3, 4, 5]
pp a | b #=> #<Set: {1, 2, 3, 4, 5}>
pp a - b #=> #<Set: {1, 2}>
pp a & b #=> #<Set: {3}>