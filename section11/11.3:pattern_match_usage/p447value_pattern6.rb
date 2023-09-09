# 想定しなかった条件が発生した時にはraiseメソッドで意図的に例外を発生させるべき
# パターンマッチなら自動的に例外が発生するからよりシンプルに書ける
country = 'india'

# 想定外の条件に備えてelse節で意図的に例外をraiseする
case country
when 'japan'
  'こんにちは'
when 'us'
  'Hello'
when 'italy'
  'Ciao'
else
  raise "無効な国名です。#{country}"
end
#=> 無効な国名です。india (RuntimeError)

# パターンマッチでは自動的に例外が発生するのでelse節が不要
case country
in 'japan'
  'こんにちは'
in 'us'
  'Hello'
in 'italy'
  'Ciao'
end
#=> india (NoMatchingPatternError)