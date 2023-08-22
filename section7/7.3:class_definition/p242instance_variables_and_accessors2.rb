# ローカル変数のスコープはその変数が宣言された位置から自身が宣言されたメソッドまたはブロックの終わりまで
class User
  def initialize(name)
    @name = name
  end

  def hello
    # shuffled_nameはローカル変数
    shuffled_name = @name.chars.shuffle.join
    puts "Hello, I am #{shuffled_name}"
  end
end

user = User.new('Alice')
user.hello #=> "Hello, I am lAice"