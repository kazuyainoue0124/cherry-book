# 名前空間として使うモジュールがどこかで定義されている場合はモジュール構文やクラス構文を入れ子にしなくてもOK
# "モジュール名::クラス名"の形式でクラス定義できる

# すでにBaseballモジュールが定義されている
module Baseball
end

# モジュール名::クラス名の形でクラスを定義できる
class Baseball::Second
  def initialize(player, uniform_number)
    @player = player
    @uniform_number = uniform_number
  end
end