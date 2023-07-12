t1 = true
t2 = true
f1 = false

# &&は||よりも優先順位が高い
puts t1 || (t2 && f1)

# andとorの優先順位は同じなので、左から順に評価される
puts (t1 or t2) and f1