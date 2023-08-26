# クラスだけでなく個々のオブジェクトにモジュールをextendできる
# その場合、モジュールのメソッドはextendしたオブジェクトの特異メソッドになる
module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

s = 'abc'

# 文字列は通常logメソッドを持たない
s.log('Hello.') #=> undefined method `log' for "abc":String (NoMethodError)

# 文字列sにLoggableモジュールをextendして、特異メソッドを定義する
s.extend Loggable

# Loggableモジュールのlogメソッドが呼び出せるようになる
s.log('Hello.') #=> [LOG] Hello.