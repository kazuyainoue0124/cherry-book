# rescue節を書かずにensure節でreturnすると例外の発生自体が取り消され正常終了してしまう
def some_method(n)
  begin
    1 / 0
    'OK'
  ensure
    # rescue節なしでensure節にreturnを書く（良くない例）
    return 'ensure'
  end
end

puts some_method(1) #=> "ensure"

# ZeroDivisionErrorが発生して異常終了しそうだが、正常終了してしまう
puts some_method(0) #=> "ensure"