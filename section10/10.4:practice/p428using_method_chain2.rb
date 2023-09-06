# メソッドチェーンではメソッド毎に改行させるコーディングスタイルも使われる
def self.loud(level)
  ->(words) do
    words
      .split(' ')
      .map { |word| word.upcase + '!' * level }
      .join(' ')
  end
end