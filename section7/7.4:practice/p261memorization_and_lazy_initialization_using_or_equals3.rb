# ||=を活用し、initializeメソッド内で重たい初期化処理が実行されることを避ける「遅延初期化」もできる

# 遅延初期化を使わない場合
class Foo
  attr_reader :bar

  # この場合、Foo.newするだけで時間がかかってしまう
  def initialize
    @bar = # 何か重い処理で@barを初期化･･････
  end
end

# 遅延初期化を使う場合
class Foo
  # initializeでは何もしないため、Foo.newが即座に終わる
  # def initialize
  # end

  # 遅延初期化のテクニックを使ってbarの値を返す
  def bar
    @bar ||= # 何か重い処理で@barを初期化･･････
  end
end