# 継承元を指定せずに作成したクラスはデフォルトでObjectクラスを継承している
class User
end

user = User.new
# Userクラスには何も定義していないがto_sメソッドやnil?メソッドを呼び出せる
puts user.to_s #=> #<User:0x00000001007a0840>
puts user.nil? #=> false

# UserクラスはObjectクラスを継承している
puts User.superclass #=> Object

# methodsメソッドで継承しているメソッドの一覧を取得できる
puts user.methods