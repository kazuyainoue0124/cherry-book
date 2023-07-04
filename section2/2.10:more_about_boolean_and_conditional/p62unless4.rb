status = 'error'

# unlessの結果を変数に代入する
message = 
    unless status == 'ok'
        '何か異常があります'
    else
        '正常です'
    end

puts message

# unlessを修飾子として使う
puts '何か異常があります' unless status == 'ok'