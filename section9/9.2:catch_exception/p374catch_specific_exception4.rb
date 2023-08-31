# 1つのrescue節に複数の例外クラスを指定することもできる
begin
  'abc'.foo
rescue ZeroDivisionError, NoMethodError
  puts '0で除算したか、存在しないメソッドが呼び出されました'
end
#=> 0で除算したか、存在しないメソッドが呼び出されました