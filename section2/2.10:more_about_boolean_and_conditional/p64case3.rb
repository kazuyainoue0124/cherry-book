country = 'us'

# Rubyのcase文は勝手にその次のwhen節の処理が実行されたりすることはない
case country
when 'japan'
    puts 'こんにちは'
when 'us'
    puts 'Hello'
when 'italy'
    puts 'Ciao'
else
    puts '???'
end