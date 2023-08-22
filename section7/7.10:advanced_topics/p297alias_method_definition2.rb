# 独自に作成したクラスでエイリアスメソッドを定義する場合、「alias 新しい名前 元の名前」と書く
# aliasキーワードよりも前に元のメソッドを定義しておかないとエラーになる
class User
  def hello
    'Hello!'
  end

  # helloメソッドのエイリアスメソッドとしてgreetを定義する
  alias greet hello
end

user = User.new
puts user.hello #=> "Hello!"
puts user.greet #=> "Hello!"