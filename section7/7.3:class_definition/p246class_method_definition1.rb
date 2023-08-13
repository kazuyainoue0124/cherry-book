# クラス内部で定義したメソッドはインスタンスメソッドになる
# インスタンス変数を読み書きする場合にインスタンスメソッドを定義する
class User
  def initialize(name)
    @name = name
  end

  # これはインスタンスメソッド
  def hello
    # @nameの値はインスタンスによって異なる
    puts "Hello, I am #{@name}."
  end
end
alice = User.new('Alice')
# インスタンスメソッドはインスタンス（オブジェクト）に対して呼び出す
alice.hello #=> "Hello, I am Alice."

bob = User.new('Bob')
# インスタンスによって内部のデータが異なるので、helloメソッドの結果も異なる
bob.hello #=> "Hello, I am Bob."