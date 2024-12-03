# 代入ではなくin節で事前に定義された変数の値を参照したい場合、ピン演算子(^)を使う
alice = 'Alice'
bob = 'Bob'
name = 'Bob'

# ピン演算子を使って事前に定義した変数を参照する
case name
in ^alice # in 'Alice'と書いたのと同じ
  'Aliceさん、こんにちは!'
in ^bob   # in 'Bob'と書いたのと同じ（ここにマッチ）
  'Bobさん、こんにちは!'
end
#=> "Bobさん、こんにちは!"