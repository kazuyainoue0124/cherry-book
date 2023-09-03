# 例外発生の有無に関わらず実行したい処理はensure節に書く
# その際rescue節は必ずしも必須ではない

# 書き込みモードでファイルを開く
file = File.open('some.txt', 'w')

begin
  # ファイルに文字列を書き込む
  file << 'Hello'
ensure
  # 例外の有無にかかわらず必ずファイルをクローズする
  file.close
end