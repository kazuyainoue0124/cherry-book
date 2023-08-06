# 以下は「ついうっかり」やってしまいがちな間違い

# ついうっかり・その1「ハッシュの内容をターミナルに出力したい！→エラー」
puts { foo: 1, bar: 2 }
#=> syntax error, unexpected ':', expecting '}' (SyntaxError)

# ()で囲む必要がある
puts ({ foo: 1, bar: 2 }) #=> {:foo=>1, :bar=>2}

# ついうっかり・その2「resultの内容が指定したハッシュの内容に一致するか検証したい！→エラー」
assert_equal { foo: 1, bar: 2 }, result
#=> syntax error, unexpected ':', expecting '}' (SyntaxError)

# ()で囲む必要がある
assert_equal({ foo: 1, bar: 2}, result)