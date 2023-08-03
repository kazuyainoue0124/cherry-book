# 番号指定パラメータを使わない場合（ブロックパラメータが2つ）
p ['japan', 'us', 'italy'].map.with_index { |country, n| [n, country] }
#=> [[0, "japan"], [1, "us"], [2, "italy"]]

# 番号指定パラメータを使う場合
p ['japan', 'us', 'italy'].map.with_index { [_2, _1] }
#=> [[0, "japan"], [1, "us"], [2, "italy"]]