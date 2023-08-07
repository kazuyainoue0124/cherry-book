# キーワード引数にはコロンが付いているがシンボルではない、あくまでもメソッド引数
def buy_burger(menu, drink: true, potato: true)
  # なんでif :drink じゃないの？
  # 答え: キーワード引数もメソッド引数の1つなので、menuと同様にdrinkと書く
  if drink
    # 省略
  end
  # なんでif :potato じゃないの？
  # 答え: キーワード引数もメソッド引数の1つなので、menuと同様にpotatoと書く
  if potato
    # 省略
  end
end

# メソッドを呼び出す側にとってはキーワード引数は「シンボルだ」と言える
# 呼び出す側はどっちの記法でも呼び出せる（ただし通常は上の書き方を使う）
buy_burger('cheese', drink: true, potato: true)
buy_burger('cheese' :drink => true, :potato => true)

# 変数経由で呼び出すこともできる
# 注意：この例はあくまで実験目的であって、実際にこんなコードを書くことはない
key_1 = :drink
key_2 = :potato
buy_burger('cheese', key_1 => true, key_2 => true)