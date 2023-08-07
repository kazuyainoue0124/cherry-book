# キーワード引数を使わない場合
buy_burger('cheese', true, true)
buy_burger('fish', true, false)

# キーワード引数を使う場合
buy_burger('cheese', drink: true, potato: true)
buy_burger('fish', drink: true, potato: false)