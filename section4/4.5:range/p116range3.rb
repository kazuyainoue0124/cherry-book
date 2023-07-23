# ..を使うと5が範囲に含まれる（1以上5以下）
range = 1..5
puts range.include?(0)   #=> false
puts range.include?(1)   #=> true
puts range.include?(4.9) #=> true
puts range.include?(5)   #=> true
puts range.include?(6)   #=> false

# ...を使うと5が範囲に含まれない（1以上5未満）
range = 1...5
puts range.include?(0)   #=> false
puts range.include?(1)   #=> true
puts range.include?(4.9) #=> true
puts range.include?(5)   #=> false
puts range.include?(6)   #=> false