# privateキーワードは厳密にはmoduleクラスのインスタンスメソッドなので引数を渡せる
# 既存のメソッド名をprivateキーワードに渡すと、そのメソッドがprivateメソッドになる
class User
  # いったんpublicメソッドとして定義する
  def foo
    'foo'
  end

  def bar
    'bar'
  end

  # fooとbarをprivateメソッドに変更する
  private :foo, :bar

  # bazはpublicメソッド
  def baz
    'baz'
  end
end

user = User.new
puts user.foo #=> private method `foo' called for #<User:0x0000000102960070> (NoMethodError)
puts user.bar #=> private method `bar' called for #<User:0x00000001008b0168> (NoMethodError)
puts user.baz #=> "baz"