# キーワード引数が導入されたのはRuby2.0から
# それ以前はメソッドの定義で引数としてハッシュを受け取りキーワード引数に見立てていた

# ハッシュを引数として受け取り、擬似キーワード引数を実現する（現在は非推奨）
def buy_burger(menu, option={})
  drink = option[:drink]
  potato = option[:potato]
  # 省略
end

buy_burger('cheese', drink: true, potato: true)

# キーワード引数の場合、存在しないキーワードを指定するとエラーが発生する
# 擬似キーワード引数の場合はどんなキーワードを指定してもエラーにならない
# （無効なキーをエラーにするためにはメソッド側で明示的な実装が必要）
buy_burger('fish', salad: true)