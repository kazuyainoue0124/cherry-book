# クラスメソッドはprivateキーワードの下に定義してもprivateメソッド扱いにはならない
class User
  private

  # クラスメソッドもprivateメソッドになる？
  def self.hello
    'Hello!'
  end
end
# クラスメソッドはprivateメソッドにならない！
puts User.hello #=> "Hello!"