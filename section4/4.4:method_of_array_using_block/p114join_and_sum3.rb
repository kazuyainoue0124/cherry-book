data = ['a', 2, 'b', 4]
# 配列に数値が含まれていても連結可能（内部的にはto_sメソッドで文字列に変換されるため）
puts data.join #=> "a2b4"