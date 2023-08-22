# name=のようなセッターメソッドを呼び出したい場合は必ずselfを付ける必要がある
class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename_to_bob
    # selfなしでname=メソッドを呼ぶ(？)
    # 「nameというローカル変数に'Bob'という文字列を代入した」と解釈されてしまう
    name = 'Bob'
  end

  def rename_to_carol
    # self付きでname=メソッドを呼ぶ
    self.name = 'Carol'
  end

  def rename_to_dave
    # 直接インスタンス変数を書き換える
    @name = 'Dave'
  end
end

user = User.new('Alice')

# Bobにリネーム･･････できていない!!
user.rename_to_bob
puts user.name #=> "Alice"

# Carolにリネーム
user.rename_to_carol
puts user.name #=> "Carol"

# Daveにリネーム
user.rename_to_dave
puts user.name #=> "Dave"