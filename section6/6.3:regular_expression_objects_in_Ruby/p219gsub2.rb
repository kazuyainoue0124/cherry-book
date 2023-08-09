# gsubメソッドの第2引数にハッシュを渡すと、変換のルールを指定できる
text = '123,456-789'

# カンマはコロンに、ハイフンはスラッシュに置き換える
hash = { ',' => ':', '-' => '/' }
puts text.gsub(/,|-/, hash) #=> "123:456/789"