# 引数が(*)だけのメソッド定義の意図2：余分に渡された引数を無視する
# 引数名のない*や**があってもメソッド内でsuperキーワードが使われていない場合は
# 「余分に渡された引数を無視する」という意味になる

# 最初の2つの引数のみ使い、ほかの引数は無視する
def add(a, b, *)
  a + b
end
puts add(1, 2, 3, 4, 5)
#=> 3

# name以外のキーワード引数は無視する
def greet(name:, **)
  "Hello, #{name}!"
end
puts greet(name: 'Alice', friend: 'Bob')
#=> "Hello, Alice!"