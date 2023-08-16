# privateメソッドはクラスの内部からしか呼び出せないメソッド
# クラス内でprivateキーワードを書くと、そこから下で定義されたメソッドはprivateメソッドになる
class User
  # ここから下で定義されたメソッドはprivate
  private

  def hello
    puts 'Hello!'
  end
end
user = User.new
# privateメソッドなのでクラスの外部から呼び出せない
user.hello
#=> private method `hello' called for #<User:0x0000000100c005e8> (NoMethodError)