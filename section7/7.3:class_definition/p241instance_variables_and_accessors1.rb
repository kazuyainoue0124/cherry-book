# インスタンス変数とは同じインスタンスの内部で共有される変数
class User
  def initialize(name)
    # インスタンス作成時に渡された名前をインスタンス変数に保存する
    @name = name
  end

  def hello
    # インスタンス変数に保存されている名前を表示する
    puts "Hello, I am #{@name}"
  end
end

user = User.new('Alice')
user.hello #=> "Hello, I am Alice"