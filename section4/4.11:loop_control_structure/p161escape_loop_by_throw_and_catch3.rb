# throwメソッドに第2引数を渡すとcatchメソッドの戻り値になる
ret = 
  catch :done do
    throw :done
  end
puts ret #=> nil

ret = 
  catch :done do
    throw :done, 123
  end
puts ret #=> 123