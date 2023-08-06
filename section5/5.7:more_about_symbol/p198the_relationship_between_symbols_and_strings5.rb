# 一般的には文字列とシンボルを同等には扱わないケースが多い

# 文字列に'pp'が含まれるか調べる
p 'apple'.include?('pp') #=> true

# シンボルを引数で渡すとエラーになる
p 'apple'.include?(:pp)  #=> no implicit conversion of Symbol into String (TypeError)