# ブロックを引数にするもう1つのメリットは、渡されたブロックに対してメソッドを呼び出せること

# arityメソッドを使ってブロックパラメータの個数に応じて処理を変える
def greet(&block)
  puts 'おはよう'
  text = 
    if block.arity == 1
      # ブロックパラメータが1個の場合
      yield 'こんにちは'
    elsif block.arity == 2
      # ブロックパラメータが2個の場合
      yield 'こんに', 'ちは'
    end
  puts text
  puts 'こんばんは'
end

# 1個のブロックパラメータでメソッドを呼び出す
greet do |text|
  text * 2
end
#=> おはよう
#   こんにちはこんにちは
#   こんばんは

# 2個のブロックパラメータでメソッドを呼び出す
greet do |text_1, text_2|
  text_1 * 2 + text_2 * 2
end
#=> おはよう
#   こんにこんにちはちは
#   こんばんは