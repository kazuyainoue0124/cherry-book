# 例外をコードの中で意図的に発生させる場合はraiseメソッドを使う
# raiseメソッドに文字列を渡すと、その文字列がエラーメッセージになる
def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    # 意図的に例外を発生させる
    raise "無効な国名です。#{country}"
  end
end
puts currency_of(:japan) #=> "yen"
puts currency_of(:italy) #=> 無効な国名です。italy (RuntimeError)