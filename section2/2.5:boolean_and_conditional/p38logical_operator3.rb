# &&は||よりも優先順位が高い
t1 = true
t2 = true
f1 = false
f2 = false
puts t1 && t2 || f1 && f2 # => true
# 上の式と下の式は同じ意味
puts (t1 && t2) || (f1 && f2) # => true