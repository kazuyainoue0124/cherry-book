# Rubyではメソッド内にスコープを限定した定数は定義できない
# メソッド内部で定数を定義しようとするとエラーになる
def foo
  BAR = 123

  BAR * 10
end
#=> dynamic constant assignment (SyntaxError)
#   BAR = 123
#   ^~~