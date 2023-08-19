# Rubyでは=で終わるメソッドを定義できる
# =で終わるメソッドは変数に代入するような形式でそのメソッドを呼べる
class User
  # =で終わるメソッドを定義する
  def name=(value)
    @name = value
  end
end

user = User.new
# 変数に代入するような形式でname=メソッドを呼び出せる
user.name = 'Alice'