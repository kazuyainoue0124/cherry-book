t1 = true
f1 = false

puts (!f1 || t1) #=> true
puts (not f1 || t1) #=> false

# 上記はそれぞれ次の式を書いたのと同じ扱い
# !は||よりも優先順位が高い
puts (!(f1) || t1)
# notは||よりも優先順位が低い
puts (not(f1 || t1))