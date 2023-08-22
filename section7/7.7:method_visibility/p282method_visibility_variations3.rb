# メソッド定義がメソッド名をシンボルとして返す性質を利用すれば、メソッド定義と同時にそのメソッドをprivateにできる
class User
  # メソッド定義の戻り値 :foo をprivateキーワード（実際はメソッド）の引数とする
  # 結果としてfooはprivateメソッドになる
  private def foo
    'foo'
  end
end

user = User.new
user.foo #=> private method `foo' called for #<User:0x0000000100fe0618> (NoMethodError)