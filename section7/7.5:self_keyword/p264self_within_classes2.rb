# クラスメソッドとインスタンスメソッドではselfの示す内容が異なる
# そのためselfでクラスメソッドからインスタンスメソッドを呼び出せない。逆も同様。
class Foo
  def self.bar
    # クラスメソッドからインスタンスメソッドのbazを呼び出す？
    self.baz
  end

  def baz
    # インスタンスメソッドからクラスメソッドのbarを呼び出す？
    self.bar
  end
end

# selfが異なるためクラスメソッドのbarからはインスタンスメソッドのbazは呼び出せない
Foo.bar #=> undefined method `baz' for Foo:Class (NoMethodError)

# selfが異なるためインスタンスメソッドのbazからはクラスメソッドのbarは呼び出せない
foo = Foo.new
foo.baz #=> undefined method `bar' for #<Foo:0x0000000103430540> (NoMethodError)