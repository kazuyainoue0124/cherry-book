# モジュール内に定義されたクラスからトップレベルの同名クラスを参照するには、クラス名の前に::を付ける
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
      # クラス名の前に::を付けるとトップレベルのクラスを指定したことになる
      @baseball_second = ::Second.new('Alice', 13)
    end
  end
end

puts Clock::Second.new(13) #=> #<Clock::Second:0x0000000102990310>