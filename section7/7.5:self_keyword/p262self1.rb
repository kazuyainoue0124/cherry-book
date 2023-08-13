# selfはインスタンス自身を表す
# selfは省略してもOK、明示してもOK
class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def hello
    # selfなしでnameメソッドを呼ぶ
    puts "Hello, I am #{name}."
  end

  def hi
    # self付きでnameメソッドを呼ぶ
    puts "Hi, I am #{self.name}."
  end

  def my_name
    # 直接インスタンス変数の@nameにアクセスする
    puts "My name is #{@name}."
  end
end

user = User.new('Alice')
user.hello   #=> "Hello, I am Alice."
user.hi      #=> "Hi, I am Alice."
user.my_name #=> "My name is Alice."