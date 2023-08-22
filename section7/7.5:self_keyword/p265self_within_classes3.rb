# クラス構文の直下ではクラスメソッドを呼び出せる
# ただしクラスメソッドを定義した後で呼び出さないとエラーが発生する
class Foo
  # この時点ではクラスメソッドbarが定義されていないので呼び出せない
  # （NoMethodErrorが発生する）
  # self.bar

  def self.bar
    puts 'hello'
  end

  # クラス構文の直下でクラスメソッドを呼び出す
  # （クラスメソッドbarが定義された後なので呼び出せる）
  self.bar
end
#=> hello