# breakに引数を渡さない場合、戻り値はnil
ret = 
  while true
    break
  end
puts ret #=> nil

# breakに引数を渡すと繰り返し処理を行う文の戻り値となる
ret =
  while true
    break 123
  end
puts ret #=> 123