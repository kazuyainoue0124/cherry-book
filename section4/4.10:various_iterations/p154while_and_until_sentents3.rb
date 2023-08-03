# 1行で書くならwhileを後ろに置いたほうがいい
a = []
a << 1 while a.size < 5
p a #=> [1, 1, 1, 1, 1]