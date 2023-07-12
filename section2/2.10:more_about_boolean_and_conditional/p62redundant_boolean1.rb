s = ''

# (empty?は文字列が空文字列だった時にtrueを返し、それ以外はfalseを返すメソッド)
# こうではなく...
if s.empty? == true
    '空文字列です'
end

# こう書く
if s.empty?
    '空文字列です'
end


n = 123

# (zero?は数値が0だった時にtrueを返し、それ以外はfalseを返すメソッド)
if n.zero? == false
    'ゼロではありません'
end

# こう書く(unless n.zero?でも可)
if !n.zero?
    'ゼロではありません'
end