# Comparableモジュールを独自のクラスにincludeして使うこともできる
# その際は<=>演算子の実装が必要
class Tempo
  include Comparable

  attr_reader :bpm

  # bpmはBeats Per Minuteの略で音楽の速さを表す単位
  def initialize(bpm)
    @bpm = bpm
  end

  # <=>はComparableモジュールで使われる演算子（メソッド）
  def <=>(other)
    # otherがTempoであればbpm同士を<=>で比較した結果を返す
    # それ以外は比較できないのでnilを返す
    other.is_a?(Tempo) ? bpm <=> other.bpm : nil
  end

  # irb上で見やすくするためにinspectメソッドをオーバーライド
  def inspect
    "#{bpm}bpm"
  end
end

t_120 = Tempo.new(120)
t_180 = Tempo.new(180)

puts t_120 > t_180  #=> false
puts t_120 <= t_180 #=> true
puts t_120 == t_180 #=> false

tempos = [Tempo.new(180), Tempo.new(60), Tempo.new(120)]
# sortメソッドの内部では並び替えの際に<=>演算子が使われる
p tempos.sort #=> [60bpm, 120bpm, 180bpm]