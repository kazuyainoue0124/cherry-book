# RuntimeErrorクラス以外の例外を使う場合でもエラーメッセージは省略しない方が良い

# エラーメッセージを省略して例外を発生させる（あまり良くない）
raise ArgumentError     #=> ArgumentError (ArgumentError)
raise ArgumentError.new #=> ArgumentError (ArgumentError)