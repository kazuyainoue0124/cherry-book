# クラスとの関連は深いが、ひとつひとつのインスタンスに含まれるデータは使わない場合、クラスメソッドとして定義する
# 
class User
  def initialize(name)
    @name = name
  end

  # self.を付けるとクラスメソッドになる
  def self.create_users(names)
    names.map do |name|
      User.new(name)
    end
  end

  # これはインスタンスメソッド
  def hello
    "Hello, I am #{@name}"
  end
end

names = ['Alice', 'Bob', 'Carol']
# クラスメソッドの呼び出し
users = User.create_users(names)
users.each do |user|
  # インスタンスメソッドの呼び出し
  puts user.hello
end
#=> Hello, I am Alice
#   Hello, I am Bob
#   Hello, I am Carol