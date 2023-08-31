# 最後のrescue節にStandardErrorクラスを指定すれば通常のプログラミングで発生するその他のエラーをまとめて補足できる
begin
  # ZeroDivisionErrorを発生させる
  1 / 0
rescue NoMethodError
  puts 'NoMethodErrorです'
rescue NameError
  puts 'NameErrorです'
rescue StandardError
  puts 'その他のエラーです'
end
#=> その他のエラーです