# Mathモジュールはモジュール関数や定数を持つ、代表的なRubyの組み込みライブラリ
# Mathモジュールのメソッドはモジュール関数になっているため、モジュールの特異メソッドとしてもミックスインとしても使える

# モジュールの特異メソッドとしてsqrt(平方根)メソッドを利用する
puts Math.sqrt(2) #=> 1.4142135623730951

class Calculator
  include Math

  def calc_sqrt(n)
    # ミックスインとしてMathモジュールのsqrtメソッドを使う
    sqrt(n)
  end
end

calculator = Calculator.new
puts calculator.calc_sqrt(2) #=> 1.4142135623730951