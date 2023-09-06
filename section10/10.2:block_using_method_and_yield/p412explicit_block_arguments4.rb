# ブロックを引数にするメリットの1つは、ブロックを他のメソッドに引き渡せること

# 日本語版のgreetメソッド
def greet_ja(&block)
  texts = ['おはよう', 'こんにちは', 'こんばんは']
  # ブロックを別のメソッドに引き渡す
  greet_common(texts, &block)
end

# 英語版のgreetメソッド
def greet_en(&block)
  texts = ['good morning', 'hello', 'good evening']
  # ブロックを別のメソッドに引き渡す
  greet_common(texts, &block)
end

# 出力処理用の共通メソッド
def greet_common(texts, &block)
  puts texts[0]
  # ブロックを実行する
  puts block.call(texts[1])
  puts texts[2]
end

# 日本語版のgreetメソッドを呼び出す
greet_ja do |text|
  text * 2
end
#=> おはよう
#   こんにちはこんにちは
#   こんばんは

# 英語版のgreetメソッドを呼び出す
greet_en do |text|
  text.upcase
end
#=> good morning
#   HELLO
#   good evening