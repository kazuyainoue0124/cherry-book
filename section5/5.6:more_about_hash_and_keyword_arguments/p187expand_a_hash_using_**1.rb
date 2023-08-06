# **をハッシュの前に付けるとハッシュリテラル内で他のハッシュの要素を展開できる
h = { us: 'dollar', india: 'rupee' }
# 変数hの要素を**で展開させる
puts ({ japan: 'yen', **h }) #=> {:japan=>"yen", :us=>"dollar", :india=>"rupee"}

# **を付けない場合は構文エラーになる
puts ({ japan: 'yen', h })
#=> (SyntaxError)
#    puts ({ japan: 'yen', h })
#                            ^