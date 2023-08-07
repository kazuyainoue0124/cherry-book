# 設計上、文字列でもシンボルでもどちらでも良いならハッシュのキーにはシンボルが適している

# ハッシュのキーをシンボルにする
currencies = { :japan => 'yen', :us => 'dollar', :india => 'rupee' }
# シンボルを使って値を取り出す
puts currencies[:us] #=> "dollar"

# 新しいキーと値の組み合わせを追加する
currencies[:italy] = 'euro'