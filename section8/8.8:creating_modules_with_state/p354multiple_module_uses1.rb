# モジュールの用途は以下の4つ（復習）
## ①モジュールを利用したメソッド定義（includeとextend）
## ②モジュールを利用した名前空間の作成
## ③関数や定数を提供するモジュールの作成
## ④状態を保持するモジュールの作成

# 1つのモジュールが上記の複数の用途で使われる場合もある

# あるモジュールが設定値情報を保持しつつ、一方で名前空間を提供するために使われることもある
# AwesomeApiモジュールは設定値を保持する（用途その1）
module AwesomeApi
  @base_url = ''
  @debug_mode = false

  class << self
    attr_accessor :base_url, :debug_mode
  end
end

# こちらではAwesomeApiモジュールが名前空間として使われる（用途その2）
module AwesomeApi
  class Engine
    # クラスの定義
  end
end