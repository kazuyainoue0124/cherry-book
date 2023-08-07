# ハッシュからインドの通貨を取得するコード例
# ハッシュは内部構造上、キーと値が大量に格納されていても、指定したキーに対応する値を高速で取り出せる
currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

puts currencies['india'] #=> "rupee"