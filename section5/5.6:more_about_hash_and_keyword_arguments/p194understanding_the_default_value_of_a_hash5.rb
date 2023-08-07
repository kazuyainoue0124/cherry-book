# デフォルト値を返すだけでなく、ハッシュに指定されたキーとデフォルト値を同時に設定する
h = Hash.new { |hash, key| hash[key] = 'hello' }
puts h[:foo] #=> "hello"
puts h[:bar] #=> "hello"

# ハッシュにキーと値が追加されている
puts h #=> {:foo=>"hello", :bar=>"hello"}