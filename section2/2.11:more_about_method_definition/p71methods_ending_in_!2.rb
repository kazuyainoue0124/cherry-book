# 引数の内容を変更しない安全バージョン
def reverse_upcase(s)
    s.reverse.upcase
end

# 引数の内容を破壊的に変更してしまう危険バージョン
def reverse_upcase!(s)
    s.reverse!
    s.upcase!
    s
end

s = 'ruby'

# 安全バージョンは引数として渡した変数sの内容はそのまま
puts reverse_upcase(s)
puts s

# 危険バージョンは引数として渡した変数sの内容が変更される
puts reverse_upcase!(s)
puts s