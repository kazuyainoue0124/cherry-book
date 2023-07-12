status = 'ok'

result = unless status == 'ok'
            '何か異常があります'
         else
            '正常です'
         end

puts result