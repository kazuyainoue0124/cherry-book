# case文と異なりパターンマッチでは1つもマッチしないと例外が発生する
country = 'india'

# case文の場合は真になる条件が全くなくてもエラーにならずnilが返るだけ
case_result = case country
              when 'japan'
                'こんにちは'
              when 'us'
                'Hello'
              when 'italy'
                'Ciao'
              end
p case_result
#=> nil

# パターンマッチではいずれの条件にもマッチしない場合は例外が発生する
pattern_match_result = case country
                       in 'japan'
                         'こんにちは'
                       in 'us'
                         'Hello'
                       in 'italy'
                         'Ciao'
                       end
p pattern_match_result
#=> india (NoMatchingPatternError)