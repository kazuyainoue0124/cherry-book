# 例外処理の戻り値をメソッドの戻り値として使うこともできる
def some_method(n)
  begin
    1 / n
    'OK'
  rescue
    'error'
  ensure
    'ensure'
  end
end

puts some_method(1) #=> "OK"
puts some_method(0) #=> "error"