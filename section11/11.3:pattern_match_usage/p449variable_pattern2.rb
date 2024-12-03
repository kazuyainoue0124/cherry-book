# variableパターンは配列の要素を変数に代入することもできる
record = [2019, 5]

# パターンにマッチした値（配列の要素）をin句の変数に代入する
result = case record
         in [year]
           "#{year}年です"
         in [year, month]
           # 要素数が2つなのでここにマッチ
           "#{year}年#{month}月です"
         in [year, month, day]
           "#{year}年#{month}月#{day}日です"
         end
puts result #=> "2019年5月です"