# Rubyの場合、クラス定義自体も上から順番に実行されるため、クラス構文の直下でクラスメソッドを呼び出せる 
class Foo
  # クラス定義が読み込まれたタイミングで"Hello!"を3回出力する
  3.times do
    puts 'Hello!'
  end
end
#=> Hello!
#   Hello!
#   Hello!