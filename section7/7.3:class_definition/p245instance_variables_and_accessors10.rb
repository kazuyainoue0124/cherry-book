# インスタンス変数を書き込み専用にしたいときはattr_accessorではなくattr_writerメソッドを使う
class User
  # 書き込み用のメソッドだけを定義する
  attr_writer :name

  def initialize(name)
    @name = name
  end
end

user = User.new('Alice')
# @nameは変更できる
user.name = 'Bob'

# @nameの参照はできない
puts user.name
#=> undefined method `name' for #<User:0x0000000105410568 @name="Bob"> (NoMethodError)