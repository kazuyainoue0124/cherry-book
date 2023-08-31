# Rubyは標準ライブラリや外部ライブラリ（gem）であってもオーバーライドや独自メソッドの追加ができる
# ただし広範囲に使われるクラスを独自に変更すると、予期せぬ不具合が起こりうる
# refinementsと呼ばれる機能を使うと独自の変更の有効範囲（スコープ）を限定できる

# refinementsを使ってStringクラスに文字列の中身をランダムに入れ替えるshuffleメソッドを追加
module StringShuffle
  # refinementsが目的なので、refineメソッドを使う
  refine String do
    def shuffle
      chars.shuffle.join
    end
  end
end

# 通常はStringクラスにshuffleメソッドはない
puts 'Alice'.shuffle #=> undefined method `shuffle' for "Alice":String (NoMethodError)

class User
  # refinementsを有効化する
  using StringShuffle

  def initialize(name)
    @name = name
  end

  def shuffled_name
    # Userクラスの内部であればStringクラスのshuffleメソッドが有効になる
    @name.shuffle
  end

  # Userクラスを抜けるとrefinementsは無効になる
end

user = User.new('Alice')
# Userクラス内ではshuffleメソッドが有効になっている
puts user.shuffled_name #=> "Aelic"

# Userクラスを経由しない場合はshuffleメソッドは使えない
puts 'Alice'.shuffle #=> undefined method `shuffle' for "Alice":String (NoMethodError)