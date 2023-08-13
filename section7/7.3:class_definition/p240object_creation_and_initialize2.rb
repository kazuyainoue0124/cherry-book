# newメソッド実行時にクラス内のinitializeメソッドが呼び出される
# インスタンスを初期化するための処理がある場合、initializeメソッドで実装する(なくてもOK)
class User
  def initialize
    puts 'Initialized.'
  end
end
User.new #=> Initialized.

# initializeメソッドはデフォルトでprivateメソッドになっているため外部から呼び出せない
user = User.new
user.initialize
#=> private method `initialize' called for #<User:0x0000000104a605e0> (NoMethodError)