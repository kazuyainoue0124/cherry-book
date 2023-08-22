# カンマで複数の引数を渡すと、複数のインスタンス変数に対するアクセサメソッドを定義できる
class User
  # @nameと@ageへのアクセサメソッドを定義する
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

user = User.new('Alice', 20)
puts user.name #=> "Alice"
puts user.age  #=> 20