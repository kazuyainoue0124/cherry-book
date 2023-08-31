# raiseメソッドの第1引数に例外クラスを、第2引数にエラーメッセージを渡すと特定の例外クラスで例外を発生させられる
# raiseメソッドに文字列だけを渡した場合はRuntimeErrorクラスの例外が発生する
def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    # RuntimeErrorではなく、ArgumentErrorを発生させる
    raise ArgumentError, "無効な国名です。#{country}"
  end
end

currency_of(:italy) #=> 無効な国名です。italy (ArgumentError)