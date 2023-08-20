# Rubyではクラス単位だけではなくオブジェクト単位で挙動を変えられる
# 特定のオブジェクトにだけ紐づくメソッドを特異メソッドと呼ぶ
alice = 'I am Alice.'
bob = 'I am Bob.'

# aliceのオブジェクトにだけ、shuffleメソッドを定義する
def alice.shuffle
  chars.shuffle.join
end

# aliceはshuffleメソッドを持つが、bobは持たない
puts alice.shuffle #=> "icealA  Im."
puts bob.shuffle   #=> "undefined method `shuffle' for "I am Bob.":String (NoMethodError)"