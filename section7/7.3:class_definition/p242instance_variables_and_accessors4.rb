# インスタンス変数は作成前にいきなり参照してもエラーにならずnilが返るだけ
class User
  def initialize(name)
    # わざとインスタンス変数への代入をコメントアウトする
    # @name = name
  end

  def hello
    puts "Hello, I am #{@name}."
  end
end

user = User.new('Alice')
# @nameを参照するとnilになる（つまり名前の部分に何も出ない）
user.hello #=> Hello, I am .