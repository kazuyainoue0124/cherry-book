# インスタンス変数の内容を外部から変更したい場合も変更用のメソッドを定義する必要がある
# Rubyでは=で終わるメソッドを定義すると変数に代入するような形式でメソッドを呼び出せる
class User
  def initialize(name)
    @name = name
  end

  # @nameを外部から参照するためのメソッド
  # 「ゲッターメソッド」とも呼ばれる
  def name
    @name
  end

  # @nameを外部から変更するためのメソッド
  # 「セッターメソッド」とも呼ばれる
  def name=(value)
    @name = value
  end
end

user = User.new('Alice')
# 変数に代入しているように見えるが、実際はname=メソッドを呼び出している
user.name = 'Bob'
puts user.name #=> "Bob"

# ゲッターメソッドとセッターメソッドを総称して「アクセサメソッド」と呼ぶ
# 他の言語ではget_やset_といった接頭辞を付与することが多いがRubyの慣習的には不適切