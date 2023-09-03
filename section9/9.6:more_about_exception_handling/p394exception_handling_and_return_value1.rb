# 例外処理にも戻り値がある
# 例外が発生しない場合はbegin節の最後の式が、例外が捕捉された場合はrescue節の最後の式が戻り値になる

# 正常に終了した場合
ret = 
  begin
    'OK'
  rescue
    'error'
  ensure
    'ensure'
  end
puts ret #=> OK

# 例外が発生した場合
ret =
begin
  1 / 0 # ZeroDivisionErrorを発生させる
  'OK'
rescue
  'error'
ensure
  'ensure'
end
puts ret #=> error