country = 'italy'

# case節の式を省略し、when節の条件式を順に評価するcase文
case
when country == 'japan'
    puts 'こんにちは'
when country == 'us'
    puts 'Hello'
when country == 'italy'
    puts 'Ciao'
else
    puts '???'
end
