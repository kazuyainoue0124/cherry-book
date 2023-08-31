# クラス構文の直下でextendしたメソッドを使うこともできる
module Loggable
  def log(text)
    puts "[LOG]#{text}"
  end
end

class Product
  # Loggableモジュールのメソッドを特異メソッド（クラスメソッド）として追加する
  extend Loggable

  # logメソッドをクラス構文の直下で呼び出す
  # (クラスが読み込まれるタイミングで、このlogメソッドも実行される)
  log 'Defined Product class.'
end
#=> [LOG]Defined Product class.