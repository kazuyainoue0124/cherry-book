# rescue節が複数ある場合、発生した例外がマッチするか上から順番にチェックされる
# スーパークラスのrescue節の後にサブクラスのrescue節を書いてしまうと後者は永遠に実行されない

# NameErrorクラスがスーパークラスでNoMethodErrorがそのサブクラス
begin
  # NoMethodErrorを発生させる
  'abc'.foo
rescue NameError
  # NoMethodErrorはここで捕捉される
  puts 'NameErrorです'
rescue NoMethodError
  # このrescue節は永遠に実行されない
  puts 'NoMethodErrorです'
end
#=> NameErrorです