def greet(county)
    if county == 'japan'
        'こんにちは'
    else
        'hello'
    end
end

# 引数が少ない
greet #=> wrong number of arguments (given 0, expected 1) (ArgumentError)

# 引数がちょうど
greet('us') #=> "hello"

# 引数が多い
greet('us', 'japan') #=> wrong number of arguments (given 2, expected 1) (ArgumentError)