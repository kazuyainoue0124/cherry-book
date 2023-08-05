# デフォルト値なしのキーワード引数を使ってメソッドを定義する
# デフォルト値を省略したキーワード引数は、呼び出し時に省略できない
def buy_burger(menu, drink:, potato:)
  # ハンバーガーを購入
  if drink
    # ドリンクを購入
  end
  if potato
    # ポテトを購入
  end
end

# キーワード引数を指定すれば、デフォルト値ありの場合と同じように使える
buy_burger('cheese', drink: true, potato: true)

# キーワード引数を省略するとエラーになる
buy_burger('fish', potato: false) #=> missing keyword: :drink(ArgumentError)