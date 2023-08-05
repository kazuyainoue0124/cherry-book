# キーワード引数を使うとどの引数がどのような意味を表すのか対応関係が分かりやすくなる
def buy_burger(menu, drink: true, potato: true)
  # ハンバーガーを購入
  if drink
    # ドリンクを購入
  end
  if potato
    # ポテトを購入
  end
end

# キーワード引数を持つメソッドを呼び出す際は「引数名: 値」の形式で書く
buy_burger('cheese', drink: true, potato: true)
buy_burger('fish', drink: true, potato: false)