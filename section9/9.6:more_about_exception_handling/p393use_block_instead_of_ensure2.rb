# ブロックの実行中に例外が発生した場合もopenメソッドが必ずクローズ処理を実行してくれる
# ensure節を実装する前に、Ruby側で自動的に処理するメソッドが用意されていないか、リファレンスを確認する
File.open('some.txt', 'w') do |file|
  file << 'Hello'
  # わざと例外を発生させる
  1 / 0
end
# 例外は発生するものの、openメソッドによってクローズ処理自体は必ず行われる
#=> divided by 0 (ZeroDivisionError)