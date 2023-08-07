# キーワード引数を使うメソッドを呼び出す場合、**を手前に付けることでハッシュをキーワード引数として渡せる
def buy_burger(menu, drink:, potato:)
  # ハンバーガーを購入
  if drink
    # ドリンクを購入
  end
  if potato
    # ポテトを購入
  end
end

params = { drink: true, potato: false }
# **を付けてハッシュをキーワード引数として利用する
buy_burger('fish', **params)