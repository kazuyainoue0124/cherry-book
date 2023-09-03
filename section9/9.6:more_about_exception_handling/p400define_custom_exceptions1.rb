# 例外クラスは独自に定義できる。その際はStandardErrorクラスか、そのサブクラスを継承させる
class NoCountryError < StandardError
  # 独自のクラス名を与えるのが目的なので、実装コードは特に書かない（継承だけで済ませる）
end

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    # 独自に定義したNoCountryErrorを発生させる
    raise NoCountryError, "無効な国名です。#{country}"
  end
end

currency_of(:italy) #=> 無効な国名です。italy (NoCountryError)