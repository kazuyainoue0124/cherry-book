# StandardErrorを捕捉したいならrescue節でわざわざ指定しなくてもOK
begin
  # ZeroDivisionErrorを発生させる
  1 / 0
rescue NoMethodError
  puts 'NoMethodErrorです'
rescue NameError
  puts 'NameErrorです'
rescue # 例外クラスを指定しない
  puts 'その他のエラーです'
end
#=> その他のエラーです