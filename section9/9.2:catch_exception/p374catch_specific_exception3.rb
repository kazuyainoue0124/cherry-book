# rescue節を複数書いて異なる例外クラスに対応することもできる
begin
  'abc'.foo
rescue ZeroDivisionError
  puts '0で除算しました'
rescue NoMethodError
  puts '存在しないメソッドが呼び出されました'
end
#=> 存在しないメソッドが呼び出されました