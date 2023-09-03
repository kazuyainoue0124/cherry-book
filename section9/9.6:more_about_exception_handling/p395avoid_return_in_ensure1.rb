# ensure節にreturnを書くと正常時も例外発生時もensureの値がメソッドの戻り値となってしまう
def some_method(n)
  begin
    1 / n
    'OK'
  rescue
    'error'
  ensure
    # ensure節にreturnを書く
    return 'ensure'
  end
end

puts some_method(1) #=> ensure
puts some_method(0) #=> ensure