# ファイルの読み書きを行う場合はopenメソッドにブロックを渡せば例外処理を書かなくてOK

#　ブロック付きでオープンすると、メソッドの実行後に自動的にクローズされる
File.open('some.txt', 'w') do |file|
  file << 'Hello'
end