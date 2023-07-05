# when節に複数の値を指定する
country = 'アメリカ'

case country
when 'japan', '日本'
    puts 'こんにちは'
when 'us', 'アメリカ'
    puts 'Hello'
when 'italy', 'イタリア'
    puts 'Ciao'
else
    puts '???'
end