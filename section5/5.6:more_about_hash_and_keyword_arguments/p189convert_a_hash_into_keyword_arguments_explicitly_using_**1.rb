# Ruby2.0~2.7ではハッシュを引数として渡すと自動的にキーワード引数に変換されていた
def buy_burger(menu, drink: true, potato: true)
  # 省略
end

# キーワード引数として渡したいハッシュを定義する
params = { drink: true, potato: false }
# ハッシュを引数として渡すと自動的にキーワード引数に変換される（Ruby2.x）
# Ruby3.0以降は自動変換が行われないためエラーが発生する（キーワード引数の分離と呼ばれる）
buy_burger('fish', params)
#=> `buy_burger': wrong number of arguments (given 2, expected 1) (ArgumentError)