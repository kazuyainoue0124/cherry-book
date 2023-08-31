# クラスと同様にモジュールにも定数を定義できる。定義の仕方や参照の仕方はクラスと同様
module Loggable
  # 定数を定義する
  PREFIX = '[LOG]'

  def log(text)
    puts "#{PREFIX} #{text}"
  end
end

# 定数を参照する
puts Loggable::PREFIX #=> "[LOG]"