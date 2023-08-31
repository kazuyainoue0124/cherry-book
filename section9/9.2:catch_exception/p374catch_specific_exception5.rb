# 例外オブジェクトを変数に格納することも可能
begin
  'abc'.foo
rescue ZeroDivisionError, NoMethodError => e
  puts "0で除算したか、存在しないメソッドが呼び出されました"
  puts "エラー: #{e.class} #{e.message}"
end
#=> 0で除算したか、存在しないメソッドが呼び出されました
#   エラー: NoMethodError undefined method `foo' for "abc":String