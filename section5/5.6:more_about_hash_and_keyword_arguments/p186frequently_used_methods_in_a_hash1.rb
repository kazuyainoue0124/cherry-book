currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }

# keysメソッドはハッシュのキーを配列として返す
p currencies.keys #=> [:japan, :us, :india]

# valuesメソッドはハッシュの値を配列として返す
p currencies.values #=> ["yen", "dollar", "rupee"]

# has_key?メソッドはハッシュの中に指定されたキーが存在するかどうか確認する
p currencies.has_key?(:japan) #=> true
p currencies.has_key?(:italy) #=> false

# include?, member?はhas_key?メソッドのエイリアスメソッド
p currencies.include?(:japan) #=> true
p currencies.include?(:italy) #=> false
p currencies.member?(:japan) #=> true
p currencies.member?(:italy) #=> false