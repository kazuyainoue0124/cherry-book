# ローカル変数は参照する前に必ず=で値を代入して作成する必要がある。
# まだ作成されていないローカル変数を参照しようとするとエラーが発生する
class User
  def initialize(name)
    @name = name
  end

  def hello
    # わざとローカル変数への代入をコメントアウトする
    # shuffled_name = @name.chars.shuffle.join
    puts "Hello, I am #{shuffled_name}"
  end
end

user = User.new('Alice')
user.hello
#=> undefined local variable or method `shuffled_name' for #<User:0x0000000104a70580 @name="Alice"> (NameError)