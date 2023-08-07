# ハッシュはto_aメソッドを使って配列に変換できる
# to_aメソッドを使うとキーと値が1つの配列に入り、それが複数並んだ配列になって返る
currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
p currencies.to_a #=> [[:japan, "yen"], [:us, "dollar"], [:india, "rupee"]]