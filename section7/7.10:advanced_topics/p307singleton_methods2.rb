# 数値（IntegerとFloat）とシンボルなど特異メソッドを定義できないオブジェクトも存在する
n = 1
def n.foo
  'foo'
end
#=> can't define singleton (TypeError)

sym = :alice
def sym.bar
  'bar'
end
#=> can't define singleton (TypeError)