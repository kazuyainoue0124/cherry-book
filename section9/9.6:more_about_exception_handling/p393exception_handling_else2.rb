# else節を使わなくてもbegin節に例外が発生しなかった場合の処理を書いてしまえば良い
# ただしbegin節と異なりelse節で実行されたコードでエラーが起きてもその手前のrescue節で捕捉されない

# else節を使う場合
begin
  puts 'Hello.'
rescue
  puts '例外が発生しました。'
else
  puts '例外が発生しませんでした。'
end
#=>Hello.
#  例外が発生しませんでした。

# else節を使わない場合
begin
  puts 'Hello.'
  puts '例外が発生しませんでした。'
rescue
  puts '例外が発生しました。'
end
#=>Hello.
#  例外が発生しませんでした。