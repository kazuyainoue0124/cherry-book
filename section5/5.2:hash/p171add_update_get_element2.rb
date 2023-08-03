# すでにキーが存在する場合は値が上書きされる
currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

# 既存の値を上書きする
currencies['japan'] = '円'

puts currencies #=> {"japan"=>"円", "us"=>"dollar", "india"=>"rupee"}