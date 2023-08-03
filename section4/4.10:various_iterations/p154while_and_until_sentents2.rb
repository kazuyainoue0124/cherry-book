# 条件式の後ろにdoを入れると1行で書ける
a = []
while a.size < 5 do a << 1 end
p a #=> [1, 1, 1, 1, 1]