# raiseメソッドに例外クラスのインスタンスを渡して特定の例外クラスを指定する方法もある
def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    # raiseメソッドに例外クラスのインスタンスを渡す（newの引数はエラーメッセージになる）
    raise ArgumentError.new("無効な国名です。#{country}")
  end
end

currency_of(:italy) #=> 無効な国名です。italy (ArgumentError)