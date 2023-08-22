# クラス内部で定義されたメソッドはインスタンスメソッドとなる
# インスタンスメソッドはそのクラスのインスタンスに対して呼び出せる
class User
  # インスタンスメソッドの定義
  def hello
    puts "Hello!"
  end
end

user = User.new
# インスタンスメソッドの呼び出し
user.hello #=> "Hello!"