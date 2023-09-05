# メソッドチェーンでは各メソッドの行頭ではなく行末にドットをつけて改行することもできる
def self.loud(level)
  ->(words) do
    # 行末にドットを付けて改行するメソッドチェーンの例
    words.
      split(' ').
      map { |word| word.upcase + '!' * level }.
      join(' ')
  end
end