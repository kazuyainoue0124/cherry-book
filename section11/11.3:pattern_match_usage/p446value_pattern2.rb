# case文と同様にパターンマッチも値を返すので結果を変数に代入したりメソッドの戻り値にしたりできる
country = 'italy'

message =
  case country
  in 'japan'
    'こんにちは'
  in 'us'
    'Hello'
  in 'italy'
    'Ciao'
  end

puts message #=> "Ciao"