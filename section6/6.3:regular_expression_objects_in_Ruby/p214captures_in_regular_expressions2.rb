# matchメソッドがMatchDataオブジェクトを返す特性は条件分岐でも使われる
text = '私の誕生日は1977年7月17日です。'
# 真偽値の判定とローカル変数への代入を同時にやってしまう
if m = /(\d+)年(\d+)月(\d+)日/.match(text)
  # マッチした場合の処理（ローカル変数のmを使う）
else
  # マッチしなかった場合の処理
end
