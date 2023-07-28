jp = ['japan', '日本']
country = '日本'
greet = case country
        # *により配列が展開され、when 'japan', '日本'と書いたのと同じ意味になる
        when *jp
          'こんにちは'
        end
puts greet #=> "こんにちは"