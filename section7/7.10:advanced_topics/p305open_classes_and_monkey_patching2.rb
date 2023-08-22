# Rubyでは定義済みのクラスそのものへのメソッド追加や、メソッド定義の上書きも可能
# Rubyのクラスは変更に対してオープンなので「オープンクラス」と呼ばれる
class String
  # 文字列をランダムにシャッフルする
  def shuffle
    chars.shuffle.join
  end
end

s = 'Hello, I am Alice.'
puts s.shuffle #=> " .,clHeami o ellIA"
puts s.shuffle #=> "a cl AI,m Hllee.io"