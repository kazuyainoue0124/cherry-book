# タグにはシンボルを使うのが基本
# throwとcatchのタグが一致しない場合はエラーが発生する
fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == 'orange' && n == 3
        # catchと一致しないタグをthrowする
        throw :foo
      end
    end
  end
end
#=> apple, 2
#   apple, 1
#   apple, 3
#   orange, 2
#   orange, 3
#   uncaught throw :foo (UncaughtThrowError)