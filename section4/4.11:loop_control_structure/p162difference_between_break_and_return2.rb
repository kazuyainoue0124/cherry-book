# breakは「繰り返し処理からの脱出」
def calc_with_break
  numbers = [1, 2, 3, 4, 5, 6]
  target = nil
  numbers.shuffle.each do |n|
    target = n
    # breakで脱出する
    break if n.even?
  end
  target * 10
end

puts calc_with_break #=> 40

# returnは「メソッドからの脱出」
def calc_with_return
  numbers = [1, 2, 3, 4, 5, 6]
  target = nil
  numbers.shuffle.each do |n|
    target = n
    # returnで脱出する？
    return if n.even?
  end
  target * 10
end

puts calc_with_return #=> nil