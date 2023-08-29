# includeはクラスだけではなくモジュールに対しても呼び出せる
# モジュールAをincludeしているモジュールBをクラスやモジュールにincludeすると、
# モジュールAもincludeしたことになる

module Greetable
  def hello
    'hello.'
  end
end

module Aisatsu
  # 別のモジュールをincludeする
  include Greetable

  def konnnichiwa
    'こんにちは。'
  end
end

class User
  # Aisatsuモジュールだけをincludeする
  include Aisatsu
end

user = User.new

# Aisatsuモジュールのメソッドを呼び出す
puts user.konnnichiwa #=> "こんにちは。"

# Greetableモジュールのメソッドを呼び出す
puts user.hello       #=> "hello."

# ancestorsメソッドでモジュールとスーパークラスの情報を確認する
p User.ancestors      #=> [User, Aisatsu, Greetable, Object, Kernel, BasicObject]