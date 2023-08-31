# 二重コロンは名前空間の区切りや定数の参照に使うが、実はメソッドも呼び出せる
# ドットはメソッドの呼び出しにしか使えない
module Sample
  class User
    NAME = 'Alice'

    def self.hello(name = NAME)
      "Hello, I am #{name}."
    end
  end
end

# 名前空間を区切ったり定数を参照したりするときは二重コロンを使い、
# メソッドを呼び出すときはドットを使うのが典型的な使い分け
puts Sample::User::NAME #=> "Alice"
puts Sample::User.hello #=> "Hello, I am Alice."

# でもメソッド呼び出しには二重コロンも使える
puts Sample::User::hello #=> "Hello, I am Alice."

# 二重コロンとは異なりドットは名前空間を区切ったり定数を参照したりはできない
# ドットの右辺は常にメソッド
puts Sample.User::NAME #=> undefined method `User' for Sample:Module (NoMethodError)
puts Sample::User.NAME #=> undefined method `NAME' for Sample::User:Class (NoMethodError)