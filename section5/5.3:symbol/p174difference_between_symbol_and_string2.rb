# シンボルはRubyの内部で整数として管理される
# だから文字列よりもシンボルのほうが高速に比較できる
puts 'apple' == 'apple' #=> true
puts :apple == :apple   #=> true