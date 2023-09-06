# 例題で使ったplayメソッド
def play(original_words)
  words = original_words
  @effects.each do |effect|
    words = effect.call(words)
  end
  words
end

# 上記のメソッドはinjectメソッドを用いてリファクタリングできる
def play(original_words)
  @effects.inject(original_words) do |word, effect|
    effect.call(original_words)
  end
end