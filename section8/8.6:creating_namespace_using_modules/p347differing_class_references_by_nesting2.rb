# 名前空間を入れ子で定義するかフラットに書くかによって、参照されるクラスが異なってしまうことがある
# Rubyではクラスやモジュールの入れ子関係を外側に向かって順にクラスを探索する
module Baseball
  # スコアを記録するためのFileクラスを定義する
  class File
    # 省略
  end
end

module Baseball
  class Second
    def file_with_nesting
      # 入れ子ありのクラス定義でFileクラスを参照する
      puts File
    end
  end
end

class Baseball::Second
  def file_without_nesting
    # 入れ子なしのクラス定義でFileクラスを参照する
    puts File
  end
end

second = Baseball::Second.new
# スコアを記録するために作ったFileクラスはこっち
## ①Baseball::Second::Fileを探す
## ②Baseball::Fileを探す
second.file_with_nesting    #=> Baseball::File
# こっちはRubyの組み込みライブラリとして用意されているFileクラス
## ①Baseball::Second.Fileを探す
## ②入れ子になっていないので次はトップレベルでFileクラスを探索してしまう
second.file_without_nesting #=> File