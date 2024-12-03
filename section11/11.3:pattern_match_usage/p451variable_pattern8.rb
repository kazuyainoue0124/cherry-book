# メソッド呼び出しもピン演算子と組み合わせることはできない
s = '1'

# ピン演算子とto_iメソッドを組み合わせた場合も構文エラー
case 1
in ^s.to_i
  '1です'
end
#=> syntax error, unexpected '.', expecting `then' or ';' or '\n' (SyntaxError)