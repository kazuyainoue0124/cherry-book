# ?で終わる変数名を定義しようとすると構文エラー
odd? = 1.odd?
#=> syntax error, unexpected '=' (SyntaxError)
# odd? = 1.odd?
#      ^

# !で終わる変数名を定義しようとすると構文エラー
upcase! = 'ruby'.upcase!
#=> syntax error, unexpected '=' (SyntaxError)
# upcase! = 'ruby'.upcase!
#         ^