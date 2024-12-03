# in節に数値や文字列などを直接指定できる利用パターン
# case節の式とin節の値が等しければ対応する処理が実行される
country = 'italy'

case country
in 'japan'
  puts 'こんにちは'
in 'us'
  puts 'Hello'
in 'italy'
  puts 'Ciao'
end
#=> "Ciao"