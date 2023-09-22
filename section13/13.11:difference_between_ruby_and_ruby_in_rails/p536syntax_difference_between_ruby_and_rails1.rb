# Rubyにおけるインスタンス変数はオブジェクト指向の属性値を保存するためのもの
class User
  def initialize(name)
    # @nameはオブジェクトの属性値を保存するためのインスタンス変数
    # (オブジェクト指向プログラミングにおけるインスタンス変数)
    @name = name
  end

  def hello
    "Hello, I am #{@name}."
  end
end