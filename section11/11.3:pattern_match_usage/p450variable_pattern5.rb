# ピン演算子を使ったマッチは厳密にはvariableパターンではなくvalueパターン
# そのためマッチには===が適用される
records = [
  [Integer, 1, 2],
  [Integer, 3, 'X']
]

records.each do |record|
  case record
  in [klass, ^klass, ^klass] # 最後の2要素が最初の要素のクラスのインスタンスであればマッチ
    puts "match: #{record}"
  else
    puts "not match: #{record}"
  end
end
#=> match: [Integer, 1, 2]
#   not match: [Integer, 3, "X"]