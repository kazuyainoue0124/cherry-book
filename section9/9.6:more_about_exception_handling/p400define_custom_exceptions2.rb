# 独自に定義した例外クラスには、独自のメソッドや独自の属性を追加することも可能
class NoCountryError < StandardError
  # 国名を属性として取得できるようにする
  attr_reader :country

  def initialize(message, country)
    @country = country
    super("#{message} #{country}")
  end
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
    raise NoCountryError.new('無効な国名です。', country)
  end
end

begin
  currency_of(:italy)
rescue NoCountryError => e
  # エラーメッセージと国名を出力する
  puts e.message
  puts e.country
end
#=> 無効な国名です。 italy
#   italy