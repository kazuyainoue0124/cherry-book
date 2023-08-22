# Ruby2.7以下の場合はメソッド定義のあとでprotectedに変更する
class User
  # いったんpublicメソッドとしてweightを定義する
  attr_reader :name, :weight
  # weightのみ、あとからprotectedメソッドに変更する
  protected :weight

  # 省略
end