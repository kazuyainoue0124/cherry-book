# メソッドを連続で呼び出していくコーディングスタイルをメソッドチェーンと呼ぶ

# 変数を用いずにsplit,map,joinと3つのメソッドを連続で利用している
def self.loud(level)
  ->(words) do
    words.split(' ').map { |word| word.upcase + '!' * level }.join(' ')
  end
end