# 範囲オブジェクトはcase文と組み合わせることもできる
def charge(age)
  case age
  # 0歳から5歳までの場合
  when 0..5
    0
  # 6歳から12歳までの場合
  when 6..12
    300
  # 13歳から18歳までの場合
  when 13..18
    600
  # それ以外の場合
  else
    1000
  end
end

puts charge(3)  #=> 0
puts charge(12) #=> 300
puts charge(16) #=> 600
puts charge(25) #=> 1000
