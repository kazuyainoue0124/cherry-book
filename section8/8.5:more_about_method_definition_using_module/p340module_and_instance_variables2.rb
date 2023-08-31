# ミックスイン先のクラスのインスタンス変数を直接変更するよりも、セッターメソッド経由で変更した方が良い
# 未定義のメソッドを参照すればエラーが生じるから不具合に気づける
module NameChangeable
  def change_name
    # セッターメソッド経由でデータを変更する
    # (ミックスイン先のクラスでセッターメソッドが未定義であれば、エラーが発生して実装上の問題に気づける)
    self.name = 'ありす'
  end
end

class User
  include NameChangeable

  # ゲッターメソッドとセッターメソッドを用意する
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

user = User.new('alice')
puts user.name #=> "alice"

# モジュールで定義したメソッドでインスタンス変数を書き換える
user.change_name
puts user.name #=> "ありす"