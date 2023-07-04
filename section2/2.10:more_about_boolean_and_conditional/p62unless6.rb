status = 'error'

# unlessを無理に使わなくても良い
result = 
    if status != 'ok'
        '何か異常があります'
    end

puts result