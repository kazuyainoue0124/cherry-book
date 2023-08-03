# returnを呼び出した場所がメソッド内部でなければエラーが発生
[1, 2, 3].each do |n|
  puts n
  return
end
#=> 1
#   unexpected return (Local JumpError)