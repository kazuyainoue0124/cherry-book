# deleteメソッドを使うと指定したキーに対応する要素を削除できる
# 戻り値は削除された要素の値

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
puts currencies.delete('japan') #=> "yen"
puts currencies                 #=> {"us"=>"dollar", "india"=>"rupee"}