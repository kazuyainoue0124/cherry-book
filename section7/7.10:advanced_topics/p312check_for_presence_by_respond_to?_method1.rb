# オブジェクトに対して特定のメソッドが呼び出し可能か確認する場合はrespond_to?メソッドを使う
s = 'Alice'

# Stringクラスはsplitメソッドを持つ
puts s.respond_to?(:split) #=> true

# nameメソッドは持たない
puts s.respond_to?(:name)  #=> false