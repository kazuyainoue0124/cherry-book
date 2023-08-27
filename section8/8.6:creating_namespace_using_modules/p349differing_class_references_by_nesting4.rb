# 入れ子ありでクラス定義をしたけれど組み込みライブラリのクラスを参照したい場合、クラス名の前に::を付ける
module Baseball
  # スコアを記録するためのFileクラスを定義する
  class File
    # 省略
  end
end

module Baseball
  class Second
    def file_with_nesting
      # 入れ子ありのクラス定義で組み込みライブラリのFileクラスを参照する
      puts ::File
    end
  end
end

class Baseball::Second
  def file_without_nesting
    # 入れ子なしのクラス定義では明示的に名前空間を付けてクラスを参照する必要がある
    puts Baseball::File
  end
end

second = Baseball::Second.new
second.file_with_nesting    #=> File
second.file_without_nesting #=> Baseball::File