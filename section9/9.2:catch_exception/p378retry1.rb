# ネットワークエラーなど一時的に発生している問題が例外の原因であれば、何度かやり直せば実行できるかも
# そんな場合はrescue節でretry文を実行するとbegin節の最初からやり直せる
# ただし無限ループを作らないようretryの回数を制限すべき

retry_count = 0
begin
  puts '処理を開始します。'
  # わざと例外を発生させる
  1 / 0
rescue
  retry_count += 1
  if retry_count <= 3
    puts "retryします。（#{retry_count}回目）"
    retry
  else
    puts 'retryに失敗しました。'
  end
end
#=> 処理を開始します。
#   retryします。（1回目）
#   処理を開始します。
#   retryします。（2回目）
#   処理を開始します。
#   retryします。（3回目）
#   処理を開始します。
#   retryに失敗しました。