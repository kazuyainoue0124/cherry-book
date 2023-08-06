# 文字列とシンボルは見た目は似ていても別物なので互換性はない
string = 'apple'
symbol = :apple

puts string == symbol #=> false
puts string + symbol  #=> no implicit conversion of Symbol into String (TypeError)