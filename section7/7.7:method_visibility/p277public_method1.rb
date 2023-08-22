# publicメソッドはクラスの外部から自由に呼び出せるメソッド
# initializeメソッド以外のインスタンスメソッドはデフォルトでpublicメソッドになる
class User
  # デフォルトはpublic
  def hello
    puts 'Hello!'
  end
end
user = User.new
# publicメソッドなのでクラスの外部から呼び出せる
user.hello #=> "Hello!"