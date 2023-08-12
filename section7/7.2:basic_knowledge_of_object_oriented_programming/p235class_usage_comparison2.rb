# クラスを使ってユーザのデータを作成する場合
# クラスをもとにして作られたデータのかたまりをオブジェクトと呼ぶ
# オブジェクトとインスタンスは同じ意味
# オブジェクトをレシーバと呼ぶこともある(「メソッドを呼び出された側」というニュアンス)

# Userクラスを定義する
class User
  attr_reader :first_mame, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end
end

# ユーザのデータを作成する
users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)

# 氏名を作成するメソッド
def full_name(user)
  "#{user.first_mame} #{user.last_name}"
end

# ユーザのデータを表示する
users.each do |user|
  puts "氏名: #{full_name(user)}、年齢: #{user.age}"
end
#=> 氏名:  Ruby、年齢: 20
#   氏名:  Python、年齢: 30