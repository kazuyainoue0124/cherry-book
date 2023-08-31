# モジュール内で定義したメソッドの中でインスタンス変数を読み書きすると、
# include先のクラスのインスタンス変数を読み書きしたことと同じになる
# ただし未定義のインスタンス変数を参照してもエラーにならないため、モジュール側でミックスイン先のインスタンス変数を
# 直接変更するのは良くない
module NameChangeable
  def change_name
    # include先のクラスのインスタンス変数を変更する
    @name = 'ありす'
  end
end

class User
  include NameChangeable

  attr_reader :name

  def initialize(name)
    @name = name
  end
end

user = User.new('alice')
puts user.name #=> "alice"

# モジュールで定義したメソッドでインスタンス変数を書き換える
user.change_name
puts user.name #=> "ありす"