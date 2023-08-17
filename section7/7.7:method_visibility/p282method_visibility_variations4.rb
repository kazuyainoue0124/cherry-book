# アクセサメソッドをprivateにしたい場合、privateキーワードにゲッターメソッドとセッターメソッドの名前を渡す
class User
  attr_accessor :name

  # ゲッターメソッドとセッターメソッドをそれぞれprivateメソッドにする
  private :name, :name=

  def initialize(name)
    @name = name
  end
end

user = User.new('Alice')
puts user.name    #=> private method `name' called for #<User:0x0000000104ad03b8 @name="Alice"> (NoMethodError)
user.name = 'Bob' #=> private method `name=' called for #<User:0x0000000100cd0568 @name="Alice"> (NoMethodError)