class CountryCode
  attr_reader :code

  def initialize(code)
    @code = code
  end
end

japan = CountryCode.new('JP')
us = CountryCode.new('US')
india = CountryCode.new('IN')

# CountryCodeクラスのインスタンスをキーにしてハッシュを作成する
currencies = { japan => 'yen', us => 'dollar', india => 'rupee' }

# 同じ国コードなら同じキーとしたいが、そのままでは同一インスタンスだけが同じキーと見なされる
key = CountryCode.new('JP')
puts currencies[key]   #=> nil
puts currencies[japan] #=> "yen"