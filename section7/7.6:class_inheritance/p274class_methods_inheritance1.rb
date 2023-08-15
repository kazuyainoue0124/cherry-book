# クラスを継承するとクラスメソッドも継承される
class Foo
  def self.hello
    'hello'
  end
end

class Bar < Foo
end

# Fooを継承したBarでもクラスメソッドのhelloが呼び出せる
puts Foo.hello #=> "hello"
puts Bar.hello #=> "hello"