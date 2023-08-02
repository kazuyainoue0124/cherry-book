# 入れ子の繰り返し処理の全てから脱出するにはcatchとthrowを使う
# 以下は'orange'と3が出たら脱出する例
fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == 'orange' && n == 3
        # 全ての繰り返し処理を脱出する
        throw :done
      end
    end
  end
end
#=> melon, 1
#   melon, 2
#   melon, 3
#   orange, 1
#   orange, 2
#   orange, 3