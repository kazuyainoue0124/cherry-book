status = 'error'

result = unless status == 'ok'
            '何か異常があります'
        end

puts result