currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

# 削除しようとしたキーが見つからないときはnilが返る
puts currencies.delete('italy') #=> nil

# ブロックを渡すとキーが見つからないときの戻り値を作成できる
puts currencies.delete('italy') { |key| "Not found: #{key}" } #=> "Not found: italy"