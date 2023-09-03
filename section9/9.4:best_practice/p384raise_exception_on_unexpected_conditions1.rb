# case文では想定外のパターンを考慮しelse節を用意すべき

# elseを用意しないパターン（良くない例）
def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  end
end

# 想定外の国名を渡すとnilが返る
p currency_of(:italy) #=> nil
# 戻り値が常にStringオブジェクトだと思い込んでしまい、upcaseメソッドを呼び出してしまった
currency = currency_of(:italy)
p currency.upcase #=> undefined method `upcase' for nil:NilClass (NoMethodError)