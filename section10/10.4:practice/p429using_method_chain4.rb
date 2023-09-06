# Ruby2.7からはメソッドチェーンの行間にコメントを挟んでも構文エラーが発生しなくなった
def self.loud(level)
  ->(words) do
    # Ruby2.7からはメソッドチェーンの行間にコメントが挟める
    words
      # 半角スペースで文字列を分割する
      .split(' ')
      # 各文字列を大文字にして"!"を指定された回数分だけ付与する
      .map { |word| word.upcase + '!' * level }
      # 半角スペースで各文字列を連結する
      .join(' ')
  end
end