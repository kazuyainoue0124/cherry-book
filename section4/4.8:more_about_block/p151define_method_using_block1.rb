names = ['田中', '鈴木', '佐藤']
san_names = names.map { |name| "#{name}さん"}
puts san_names.join('と') #=> "田中さんと鈴木さんと佐藤さん"

# ↑のメソッドはブロックの後ろにjoinメソッドを繋げて1行で書ける
names = ['田中', '鈴木', '佐藤']
puts names.map { |name| "#{name}さん" }.join('と') #=> "田中さんと鈴木さんと佐藤さん"

# ↑のメソッドは{}ではなくdo...endでも書ける
names = ['田中', '鈴木', '佐藤']
san_names = names.map do |name|
              "#{name}さん"
            end.join('と')
puts san_names #=> "田中さんと鈴木さんと佐藤さん"