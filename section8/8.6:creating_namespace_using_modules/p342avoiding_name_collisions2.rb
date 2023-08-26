# 名前空間（ネームスペース）としてのモジュールを使えばクラス名の衝突を防げる
# 同名のクラス名があっても外側のモジュール名さえ異なっていれば名前の衝突は発生しない
module Baseball
  # これはBaseballモジュールに属するSecondクラス
  class Second
    def initialize(player, uniform_number)
      @player = player
      @uniform_number = uniform_number
    end
  end
end

module Clock
  # これはClockモジュールに属するSecondクラス
  class Second
    def initialize(digits)
      @digits = digits
    end
  end
end

# モジュールに属するクラスを参照する際は"モジュール名::クラス名"のように::でモジュール名とクラス名を区切る
# 二塁手のAliceを作成する（ちゃんと区別できる）
Baseball::Second.new('Alice', 13)
# 時計の13秒を作成する（ちゃんと区別する）
Clock::Second.new(13)