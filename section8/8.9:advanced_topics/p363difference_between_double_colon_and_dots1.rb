# 二重コロンとドットの使い分け
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