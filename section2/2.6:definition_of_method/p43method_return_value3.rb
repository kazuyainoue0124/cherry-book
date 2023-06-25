def greet(country)
    # countryがnilならメッセージを返してメソッドを抜ける
    # (nil?はオブジェクトがnilの場合にtrueを返すメソッド)
    return 'countryを入力してください' if country.nil?

    if country =='japan'
        'こんにちは'
    else
        'hello'
    end
end

puts greet(nil)
puts greet('japan')