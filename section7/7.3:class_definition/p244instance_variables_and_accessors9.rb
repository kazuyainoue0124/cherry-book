# インスタンス変数を読み取り専用にしたいときはattr_accessorではなくattr_readerメソッドを使う
class User
  # 読み取り用のメソッドだけを定義する
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

user = User.new('Alice')
# @nameの参照はできる
puts user.name #=> "Alice"

# @nameを変更しようとするとエラーになる
user.name = 'Bob'
#=> undefined method `name=' for #<User:0x00000001027205d0 @name="Alice"> (NoMethodError)