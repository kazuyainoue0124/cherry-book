# サブクラスのrescue節をスーパークラスのrescue節の前に書けばNoMethodError用の例外処理を実行できる
begin
  'abc'.foo
rescue NoMethodError
  # NoMethodErrorはここで捕捉される
  puts 'NoMethodErrorです'
rescue NameError
  puts 'NameErrorです'
end
#=> NoMethodErrorです