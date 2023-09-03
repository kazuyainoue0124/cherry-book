# raiseメソッドに渡す文字列は省略可能だが、例外発生の原因がわかりづらいため付けた方が良い
def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    # エラーメッセージなしで例外を発生させる（あまり良くない）
    raise
  end
end

puts currency_of(:italy) #=> unhandled exception