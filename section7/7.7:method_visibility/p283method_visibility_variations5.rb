class User
  # Ruby 3.0は1行でprivateなアクセサメソッドを定義できる
  private attr_accessor :name

  def initialize(name)
    @name = name
  end
end

user = User.new('Alice')
puts user.name    #=> private method `name' called for #<User:0x00000001011b0470 @name="Alice"> (NoMethodError)
user.name = 'Bob' #=> private method `name=' called for #<User:0x0000000104cc0588 @name="Alice"> (NoMethodError)