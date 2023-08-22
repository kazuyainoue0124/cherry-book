# class << selfの代わりにprivate_class_methodキーワードを使ってクラスメソッドをprivateメソッドにできる
class User
  def self.hello
    'Hello!'
  end
  # 後からクラスメソッドをprivateに変更する
  private_class_method :hello
end
puts User.hello #=> "private method `hello' called for User:Class (NoMethodError)"