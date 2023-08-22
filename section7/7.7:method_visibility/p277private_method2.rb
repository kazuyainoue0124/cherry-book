# Ruby2.6までは「privateメソッドは明示的にレシーバを指定できない」というルールがあったためself付きで呼び出すとエラー
# Ruby2.7以降はselfを付けてもprivateメソッドが呼び出される
class User
  def hello
    # Ruby 2.6以前 = selfを付けるとエラー
    # Ruby 2.7以降 = selfを付けても付けなくてもOK
    puts "Hello, I am #{self.name}."
  end

  private

  def name
    'Alice'
  end
end

user = User.new

# Ruby 2.6以前 = エラーになる
user.hello
#=> NoMethodError (private method `name` called for #<User:0x000000012d8508a8>)

# Ruby 2.7以降 = エラーにならない
user.hello
#=> "Hello, I am Alice."