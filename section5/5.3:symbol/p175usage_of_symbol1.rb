# シンボルがよく使われるのはソースコード上では名前を識別したいが、その名前が文字列でなくても構わない場合

# 文字列をハッシュのキーにする
currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
# 文字列を使って値を取り出す
puts currencies['japan'] #=> "yen"

# シンボルをハッシュのキーにする
currencies = { :japan => 'yen', :us => 'dollar', :india => 'rupee' }
# シンボルを使って値を取り出す（文字列より高速）
puts currencies[:japan] #=> "yen"