class User
end

user = User.new
# オブジェクトのクラスを調べる場合はclassメソッドを使う
puts user.class

# オブジェクトのクラスはinstance_of?メソッドでも調べられる
# userはUserクラスのインスタンスか？
puts user.instance_of?(User)   #=> true
# userはStringクラスのインスタンスか？
puts user.instance_of?(String) #=> false