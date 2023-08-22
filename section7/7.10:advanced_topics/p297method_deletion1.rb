# メソッドを削除する場合は「undef 削除するメソッドの名前」と書く
class User
  # freezeメソッドの定義を削除する
  undef freeze
end
user = User.new
# freezeメソッドを呼び出すとエラーになる
puts user.freeze
#=> undefined method `freeze' for #<User:0x00000001029c08d0> (NoMethodError)