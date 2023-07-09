# 値を返し、結果を変数に代入できるものが式
# 値を返さず、変数に代入しようとすると構文エラーになるものが文

# if文が値を返すので変数に代入できる
a = 
    if true
        '真です'
    else
        '偽です'
    end

puts a

# メソッドの定義も実は値(シンボル)を返している（シンボルは第5章で解説）
b = def foo; end
puts b