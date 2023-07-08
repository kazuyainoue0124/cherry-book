# yが指定されなければxの値をyに設定する
def point(x, y = x)
    puts "x=#{x}, y=#{y}"
end

point(3)     #=> x=3, y=3
point(3, 10) #=> x=3, y=10