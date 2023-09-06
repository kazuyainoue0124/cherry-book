# ブロックなしでメソッドが呼ばれているにもかかわらずyieldでブロックを呼び出そうとした場合はエラーになる
def greet
  puts 'おはよう'
  # ここでブロックの処理を呼び出そうとする
  yield
  puts 'こんばんは'
end

# わざとブロックを付けずに呼び出す
greet
#=> おはよう
#   no block given (yield) (LocalJumpError)