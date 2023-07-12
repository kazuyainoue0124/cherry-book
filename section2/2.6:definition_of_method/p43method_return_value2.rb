def greet(country)
    # "こんにちは"または"hello"がメソッドの戻り値になる
    if country == 'japan'
        'こんにちは'
    else
        'hello'
    end
end

puts greet('japan')
puts greet('us')