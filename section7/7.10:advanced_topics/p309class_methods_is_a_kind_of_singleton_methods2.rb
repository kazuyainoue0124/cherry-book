# クラスメソッドは特異メソッドと同じ構文でも定義できる
class User
end

# クラス構文の外部でクラスメソッドを定義する方法1
def User.hello
  'Hello.'
end

# クラス構文の外部でクラスメソッドを定義する方法2
class << User
  def hi
    'Hi.'
  end
end

puts User.hello #=> "Hello."
puts User.hi    #=> "Hi."