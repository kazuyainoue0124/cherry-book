currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

# 存在しないキーを指定するとnilが返る
puts currencies['brazil'] #=> nil