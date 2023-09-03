# もちろん2つ目のスーパークラス側のrescue節の処理も実行できる
begin
  # NameErrorを発生させる
  Foo.new
rescue NoMethodError
  puts 'NoMethodErrorです'
rescue NameError
  puts 'NameErrorです'
end
#=> NameErrorです