# 番号指定パラメータの個数によって代入される値が変わってくるので要注意
dimensions = [
  [10, 20],
  [30, 40],
  [50, 60],
]

# dimensions.each { |dimension| p dimension }と書いたのと同じ
dimensions.each { p _1 }
#=> [10, 20]
#   [30, 40]
#   [50, 60]

# dimensions.each { |length, width| puts "#{length} / #{width}" }と書いたのと同じ
dimensions.each { puts "#{_1} / #{_2}"}
#=> 10 / 20
#   30 / 40
#   50 / 60