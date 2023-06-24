country = 'italy'

# if節とelsif節のどちらの条件にも合致しないのでif文全体の戻り値はnil
greeting = 
    if country == 'japan'
        'こんにちは'
    elsif country == 'us'
        'Hello'
    end

puts greeting