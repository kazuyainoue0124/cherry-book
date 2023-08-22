# 継承関係(is-a関係にあるかどうか)を含めて確認したい場合はis_a?メソッドを使う（エイリアスメソッドはkind_of?）
class User
end
user = User.new

# instance_of?は引数で指定したクラスそのもののインスタンスでないとtrueにならない
puts user.instance_of?(Object) #=> false

# is_a?はis-a関係にあればtrueになる
puts user.is_a?(User)        #=> true
puts user.is_a?(Object)      #=> true
puts user.is_a?(BasicObject) #=> true