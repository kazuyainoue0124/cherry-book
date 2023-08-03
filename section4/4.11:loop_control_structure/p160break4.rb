# 繰り返し処理が入れ子になっている場合、一番内側の繰り返し処理をbreakで脱出する
fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
fruits.each do |fruit|
  # 配列の数字をランダムに入れ替え、3が出たらbreakする
  numbers.shuffle.each do |n|
    puts "#{fruit}, #{n}"
    # numbersのループは脱出するが、fruitsのループは継続する
    break if n == 3
  end
end
#=> apple, 2
#   apple, 1
#   apple, 3
#   melon, 1
#   melon, 2
#   melon, 3
#   orange, 2
#   orange, 3