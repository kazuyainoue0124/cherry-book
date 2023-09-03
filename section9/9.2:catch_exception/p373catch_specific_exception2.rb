# rescueで指定した例外クラス以外の例外が発生した場合はプログラムが異常終了する
begin
  # NoMethodErrorを発生させる
  'abc'.foo
rescue ZeroDivisionError
  puts '0で除算しました'
end
#=> undefined method `foo' for "abc":String (NoMethodError)