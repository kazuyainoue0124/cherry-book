# initializeメソッドに引数を付けると、newメソッドを呼ぶ時にも引数が必要となる
class User
  def initialize(name, age)
    puts "name: #{name}, age: #{age}"
  end
end
User.new #=> wrong number of arguments (given 0, expected 2) (ArgumentError)
User.new('Alice', 20) #=> name: Alice, age: 20