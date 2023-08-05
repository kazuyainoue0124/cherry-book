def buy_burger(menu, drink: true, potato: true)
  # ハンバーガーを購入
  if drink
    # ドリンクを購入
  end
  if potato
    # ポテトを購入
  end
end

# キーワード引数にはデフォルト値が設定されているので引数を省略できる
# drinkはデフォルト値のtrueを使うので指定しない
buy_burger('fish', potato: false)

# drinkもpotatoもデフォルト値のtrueを使うので指定しない
buy_burger('cheese')

# キーワード引数は呼び出し時に自由に順番を入れ替えられる
buy_burger('fish', potato: true, drink: true)

# 存在しないキーワード引数を指定した場合はエラーになる
buy_burger('fish', salad: true) #=> unknown keyword: :salad(ArgumentError)