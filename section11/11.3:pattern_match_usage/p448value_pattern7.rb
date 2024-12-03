# else節の代わりにvariableパターンを利用し、任意のオブジェクトにマッチするin節を用意して例外の発生を防ぐこともできる
country = 'india'

result = case country
         in 'japan'
           'こんにちは'
         in 'us'
           'Hello'
         in 'italy'
           'Ciao'
         in obj
           # variableパターンを用いて任意のオブジェクトをマッチさせる（実質的なelse節）
           "Unknown: #{obj}"
         end
p result #=> "Unknown: india"