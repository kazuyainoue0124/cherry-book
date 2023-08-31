# usingメソッドはクラス構文とモジュール構文の内部で使う
# トップレベルでも使えるが、有効範囲が「usingで呼び出された場所からファイルの最後まで」になる

# StringShuffleモジュールを読み込む（架空）
require_relative 'string_module'

# ここではまだshuffleメソッドが使えない
puts 'Alice'.shuffle

# トップレベルでusingすると、ここからファイルの最後までshuffleメソッドが有効になる
using StringShuffle

puts 'Alice'.shuffle #=> ecAli

class User
  def initialize(name)
    @name = name
  end

  def shuffled_name
    @name.shuffle
  end
end

user = User.new('Alice')
puts user.shuffled_name #=> cliAe

puts 'Alice'.shuffle    #=> liceA

# 他のファイルではshuffleメソッドは使えない