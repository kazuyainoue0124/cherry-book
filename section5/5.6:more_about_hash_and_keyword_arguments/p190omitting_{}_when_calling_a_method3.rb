# 配列の場合も最後がハッシュであれば{}は省略可能
a = ['fish', { drink: true, potato: true}]
puts a[0] #=> "fish"
puts a[1] #=> {:drink=>true, :potato=>true}

# 最後の要素がハッシュなので{}を省略
b = ['fish', drink: true, potato: true]
puts b[0] #=> "fish"
puts b[1] #=> {:drink=>true, :potato=>true}