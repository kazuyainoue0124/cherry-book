# インスタンス変数はクラスの外部から参照できない
# 参照したい場合は参照用のメソッドを作る必要がある
class User
  def initialize(name)
    @name = name
  end

  # @nameを外部から参照するためのメソッド
  def name
    @name
  end
end

user = User.new('Alice')
# nameメソッドを経由して@nameの内容を取得する
puts user.name #=> "Alice"