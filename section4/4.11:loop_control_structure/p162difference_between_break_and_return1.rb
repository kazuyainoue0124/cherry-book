# returnを使ってメソッドから途中で脱出する
def greet(country)
  # coutnryがnilならメッセージを返してメソッドを抜ける
  return 'countryを入力してください' if country.nil?

  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end