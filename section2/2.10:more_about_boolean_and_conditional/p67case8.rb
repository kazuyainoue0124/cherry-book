# パターンマッチのコード例。case文によく似ているがwhenではなくinを使っている点に注目。詳しくは第11章を参照
case [0, 1, 2]
in [n, 1, 2]
    puts "n=#{n}"
else
    'not matched'
end
