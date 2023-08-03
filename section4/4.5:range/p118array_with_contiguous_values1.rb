# 範囲オブジェクトに対してto_aメソッドを呼び出すと値が連続する配列を作成できる

pp (1..5).to_a  #=> [1, 2, 3, 4, 5]
pp (1...5).to_a #=> [1, 2, 3, 4]

pp ('a'..'e').to_a  #=> ["a", "b", "c", "d", "e"]
pp ('a'...'e').to_a #=> ["a", "b", "c", "d"]

pp ('bad'..'bag').to_a  #=> ["bad", "bae", "baf", "bag"]
pp ('bad'...'bag').to_a #=> ["bad", "bae", "baf"]

# to_aメソッドの代わりに[*範囲オブジェクト]の書き方でも配列を作れる
pp [*1..5]  #=> [1, 2, 3, 4, 5]
pp [*1...5] #=> [1, 2, 3, 4]