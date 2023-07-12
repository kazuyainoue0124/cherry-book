# =を2回使って変数aとbに同じ文字列を代入する
a = b = 'hello'
# aに格納された文字列を大文字にする
a.upcase!
# aだけを大文字にしたはずなのに、bも大文字に変わってしまった！
puts a
puts b

# 別々に代入した場合はこの問題は起きない（cは大文字になるが、dは小文字のまま）
c = 'hello'
d = 'hello'
c.upcase!
puts c
puts d