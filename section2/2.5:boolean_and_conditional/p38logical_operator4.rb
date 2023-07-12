# 優先順位を変えたい場合は()を使う
t1 = true
t2 = true
f1 = false
f2 = false
puts t1 && (t2 || f1) && f2 # => false