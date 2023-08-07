# menuとoptionsの順番を入れ替える
def buy_burger(options = {}, menu)
  puts options
end

# optionsは最後の引数ではないので、ハッシュリテラルの{}は省略できない
buy_burger('drink' => true, 'potato' => false , 'fish')
#=> syntax error, unexpected ')', expecting => (SyntaxError)
# ...ue, 'potato' => false , 'fish')
# ...                              ^

# 最後の引数でなければ{}を付けて普通にハッシュを作成する
buy_burger({'drink' => true, 'potato' => false}, 'fish') #=> {"drink"=>true, "potato"=>false}