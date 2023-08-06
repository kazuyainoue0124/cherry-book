def buy_burger(menu, options = {})
  puts options
end

# 第2引数以降にハッシュが来る場合は、()を省略してもエラーにならない
buy_burger 'fish', { 'drink' => true, 'potato' => false}
#=> {"drink"=>true, "potato"=>false}

# ↑の場合、そもそもハッシュが最後の引数なので、{}を省略できる
buy_burger 'fish', 'drink' => true, 'potato' => false
#=> {"drink"=>true, "potato"=>false}