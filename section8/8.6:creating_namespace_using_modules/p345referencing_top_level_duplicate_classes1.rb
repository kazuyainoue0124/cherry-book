# モジュールの内部からトップレベルに定義されている同名クラスは参照できない

# トップレベルのSecondクラス
class Second
  def initialize(player, uniform_number)
    @player = player
    @uniform_number = uniform_number
  end
end

module Clock
  # ClockクラスのSecondモジュール
  class Second
    def initialize(digits)
      @digits = digits
      # トップレベルのSecondクラスをnewしたい(が、自分と同じクラスが参照されてしまう)
      @baseball_second = Second.new('Alice', 13)
    end
  end
end

# initializeメソッド内のSecond.newの呼び出しに失敗する
Clock::Second.new(13)
#=> wrong number of arguments (given 2, expected 1) (ArgumentError)