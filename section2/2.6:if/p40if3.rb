# Rubyは最後に評価された指揮を戻り値として返す
country = 'italy'

# putsを使わずif文の戻り値を直接確認する
if country == 'japan'
    'こんにちは'
elsif country == 'us'
    'Hello'
elsif country == 'italy'
    'Ciao'
else
    '???'
end
