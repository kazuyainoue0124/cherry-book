# newメソッド実行時にクラス内のinitializeメソッドが呼び出される
# インスタンスを初期化するための処理がある場合、initializeメソッドで実装する(なくてもOK)
class User
  def initialize
    puts 'Initialized.'
  end
end
User.new #=> Initialized.