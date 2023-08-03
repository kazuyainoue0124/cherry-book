# 引数付きのメソッドを呼び出す際、{}をブロックとして使う場合はメソッド引数の()を省略できない
a = [1, 2, 3]

# ブロックを渡さないときは指定した値が見つからないとnilが返る
puts a.delete(100) #=> nil

# ブロックを渡すとブロックの戻り値が指定した値が見つからないときの戻り値になる
a.delete(100) do
  puts 'NG'
end
#=> "NG"

# ↑の引数を囲む()を省略(このコードは動く)
a.delete 100 do
  puts 'NG'
end
#=> "NG"

# ↑のdo...endを{}に置き換えて実行する(エラーになる)
# {}の結合度が強いため100 { puts 'NG' }と解釈されてしまう
a.delete 100 { puts 'NG' }
#=> unexpected '{', expecting end-of-input (SyntaxError)

# ↑の100を()で囲むとa.delete(100)が優先的に解釈される
a.delete(100) { puts 'NG' }
#=> "NG"