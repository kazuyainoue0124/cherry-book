# protectedメソッドはそのメソッドを定義したクラス自身と、そのサブクラスのインスタンスメソッドから
# レシーバ付きで呼び出せるメソッド
class User
  # weightは外部に公開しない
  attr_reader :name

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  # 自分がother_userより重い場合はtrue
  def heavier_than?(other_user)
    other_user.weight < @weight
  end
end

alice = User.new('Alice', 50)
bob = User.new('Bob', 60)
# AliceはBobのweightを取得できない
puts alice.heavier_than?(bob)