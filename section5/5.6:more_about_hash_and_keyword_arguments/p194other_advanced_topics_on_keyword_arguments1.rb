# メソッド定義に**nilという引数が含まれている場合、そのメソッドがキーワード引数を1つも受け取らないことを意味する
# **nilはRuby2.7以降で使用可能
def foo(*args)
  p args
end
# **nilなしだと、キーワード引数がハッシュになってargsに格納される
foo(x: 1) #=> [{:x=>1}]

# **nilはRuby2.7以上で使用可能
def bar(*args, **nil)
  p args
end

# **nilがあるとキーワード引数をいっさい受け取らないため、このメソッド呼び出しはエラーになる
bar(x: 1) #=> no keywords accepted (ArgumentError)

# キーワード引数ではなく、ハッシュオブジェクトを引数として渡すのはOK
bar({x: 1}) #=> [{:x=>1}]