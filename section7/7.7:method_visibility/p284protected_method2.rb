# protectedメソッドは、外部には公開したくないが同じクラスやサブクラスの中であればレシーバ付きで呼び出せるようにしたい、
# というときに使うメソッド
class User
  attr_reader :name

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def heavier_than?(other_user)
    other_user.weight < @weight
  end

  protected

  # protectedメソッドなので同じクラスかサブクラスであればレシーバ付きで呼び出せる
  def weight
    @weight
  end
end
alice = User.new('Alice', 50)
bob = User.new('Bob', 60)

# 同じクラスのインスタンスメソッド内であればweightが呼び出せる
puts alice.heavier_than?(bob) #=> false
puts bob.heavier_than?(alice) #=> true

# クラスの外ではweightは呼び出せない
puts alice.weight
#=> protected method `weight' called for #<User:0x0000000104b10120 @name="Alice", @weight=50> (NoMethodError)