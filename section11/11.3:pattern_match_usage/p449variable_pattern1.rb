# variableパターンはin節のパターンに変数を書いてローカル変数の宣言と代入を同時に行うパターン

# 文字列もマッチ
result_string = case 'Alice'
                in obj
                  "obj=#{obj}"
                end
puts result_string
#=> "obj=Alice"

# 数値もマッチ
result_integer = case 123
                 in obj
                   "obj=#{obj}"
                 end
puts result_integer
#=> "obj=123"

# 配列もマッチ
result_array = case [10, 20]
               in obj
                 "obj=#{obj}"
               end
puts result_array
#=> "obj=[10, 20]"