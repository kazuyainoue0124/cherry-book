# 全範囲を表す範囲オブジェクト（いずれも同じ意味)
# nilを始端・終端どちらも省略することはできない
puts nil..nil
puts (nil..)
puts (..nil)

# nilを両方とも省略すると構文エラー
puts (..)
#=> syntax error, unexpected ')' (SyntaxError)