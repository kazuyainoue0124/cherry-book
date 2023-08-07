# 変数への代入と条件分岐を同時に実現できるイディオム

# 国名に応じて通貨を返す（該当する通貨がなければnil）
def find_currency(country)
  currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
  currencies[country]
end

# 指定された国の通貨を大文字にして返す
# def show_currency(country)
#   currency = find_currency(country)
#   # nilでないことをチェック（nilだとupcaseが呼び出せないため）
#   if currency
#     currency.upcase
#   end
# end

# Rubyでは変数への代入自体が戻り値を持つため、↑のメソッドは以下のように書ける
def show_currency(country)
  # 条件分岐内で直接変数に代入してしまう（値が取得できれば真、できなければ偽）
  if currency = find_currency(country)
    currency.upcase
  end
end

# 通貨が見つかる場合と見つからない場合の結果を確認
p show_currency(:japan)  #=> "YEN"
p show_currency(:brazil) #=> nil