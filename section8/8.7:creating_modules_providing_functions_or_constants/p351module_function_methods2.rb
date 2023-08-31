# module_functionメソッドを引数なしで呼び出した場合は、そこから下に定義されたメソッドが
# 全てモジュール関数になる
module Loggable
  # ここから下のメソッドは全てモジュール関数
  module_function

  def log(text)
    puts "[LOG] #{text}"
  end
end