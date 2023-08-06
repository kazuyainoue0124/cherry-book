# Rubyではメソッド呼び出しの()は省略できるが第1引数がハッシュの場合は必ず()を付けないとダメ
def buy_burger(options = {}, menu)
  puts options
end

# 第1引数にハッシュの{}が来る場合は()を省略できない
buy_burger({'drink' => true, 'potato' => false}, 'fish')
# ()を省略するとエラーになる
buy_burger{'drink' => true, 'potato' => false}, 'fish'