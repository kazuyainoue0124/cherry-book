# インスタンス変数名をタイプミスすると思わぬ不具合の原因となる
class User
  def initialize(name)
    @name = name
  end

  def hello
    # 間違って@nameを@mameと書いてしまった！（@mameはnilになる）
    puts "Hello, I am #{@mame}."
  end
end

user = User.new('Alice')
# タイプミスに気づいていないと、名前が出ないことにびっくりするはず
user.hello #=> Hello, I am .