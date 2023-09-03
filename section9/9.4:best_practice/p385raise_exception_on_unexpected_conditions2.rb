# 想定外のパターンがやってきた時は例外を発生させ、速やかにプログラムの実行を中止するのが良い

# elseに入ったら例外を発生させるパターン（良い例）
def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    raise ArgumentError, "無効な国名です。#{country}"
  end
end
# 例外が発生する
currency_of(:italy) #=> 無効な国名です。italy (ArgumentError)