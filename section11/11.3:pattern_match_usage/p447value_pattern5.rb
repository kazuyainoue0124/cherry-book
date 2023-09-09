# パターンマッチでエラーを発生させたくない場合はelse節を用意する
country = 'india'

pattern_match_result =  case country
                        in 'japan'
                          'こんにちは'
                        in 'us'
                          'Hello'
                        in 'italy'
                          'Ciao'
                        else
                          'Unknown'
                        end
p pattern_match_result
#=> "Unknown"