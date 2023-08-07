# メソッドの最後の引数がハッシュであればハッシュリテラルの{}を省略できる
# optionは任意のハッシュを受け付ける
def buy_burger(menu, options = {})
  puts options
end

# ハッシュを第2引数として渡す
buy_burger('fish', {'drink' => true, 'potato' => false}) #=> {"drink"=>true, "potato"=>false}

# ハッシュリテラルの{}を省略してメソッドを呼び出す(最後の引数なのでOK)
buy_burger('fish', 'drink' => true, 'potato' => false) #=> {"drink"=>true, "potato"=>false}