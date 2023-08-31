# クラス名が重複してしまうと両者を区別できない
# 「野球の二塁手」という意味でSecondクラスを定義
class Second
  def initialize(player, uniform_number)
    @player = player
    @uniform_number = uniform_number
  end
end

# 「時計の砂」という意味でSecondクラスを定義
class Second
  def initialize(digits)
    @digits = digits
  end
end

# 二塁手のAliceを作成したい（が、区別できない）
Second.new('Alice', 13)

# 時計の13秒を作成したい（が、区別できない）
Second.new(13)