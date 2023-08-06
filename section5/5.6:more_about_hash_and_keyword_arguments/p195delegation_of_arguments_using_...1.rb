# Ruby2.0~2.7では普通の引数もキーワード引数もまとめて別のメソッドに渡せた（引数の委譲）

# Ruby2.xでは*付きの引数を使うと別のメソッドに引数をまるごと委譲できた
def foo(*args)
  bar(*args)
end

def bar(a, b, c: 1)
  puts "a=#{a} b=#{b}, c=#{c}"
end

# fooに渡した引数がそのままbarに委譲される
foo(10, 20, c: 30) #=> a=10, b=20, c=30

# Ruby3.0以降では↑の方法では引数を委譲できない
foo(10, 20 c: 30) #=> wrong number of arguments (given 3, expected 2) (ArgumentError)

# Ruby2.7以降では通常の引数とキーワード引数を別々に委譲する必要がある
def foo(*args, **opts)
  bar(*args, **opts)
end

# ...引数を使うと通常の引数とキーワード引数をまとめて委譲できるため↑よりシンプル（Ruby2.7以降）
def foo(...)
  bar(...)
end
