# クラスは内部にデータと、そのデータを利用する独自のメソッドを持つことができる
# データとデータに関するメソッドが常にセットになるため整理しやすい

# Userクラスを定義する
class User
  attr_reader :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  # 氏名を作成するメソッドをクラス内部に追加
  # クラス内部にメソッドを定義すると引数を渡す必要がなくなる
  def full_name
    "#{first_name} #{last_name}"
  end
end

# ユーザのデータを作成する
users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)

# ユーザのデータを表示する
users.each do |user|
  puts "氏名: #{user.full_name}、年齢: #{user.age}"
end
#=> 氏名: Alice Ruby、年齢: 20
#   氏名: Bob Python、年齢: 30