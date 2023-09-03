# メソッドの中身全体が例外処理で囲まれている場合はbeginとendを省略できる
def fizz_buzz(n)
# beginを省略
# begin
  if n % 15 == 0
    'Fizz Buzz'
  elsif n % 3 == 0
    'Fizz'
  elsif n % 5 == 0
    'Buzz'
  else
    n.to_s
  end
rescue => e
  puts "#{e.class} #{e.message}"
# endも省略
# end
end

fizz_buzz(nil) #=> NoMethodError undefined method `%' for nil:NilClass