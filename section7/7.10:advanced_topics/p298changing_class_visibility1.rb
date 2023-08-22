# Rubyではクラス構文にpublicやprivateのようなキーワードは付けられないし、可視性は変えられない
class Foo
  # このようなクラス定義は無意味
  # (場合によってはエラーにならないこともあるが、クラスの可視性が変わるわけではない)
  private class Bar
    # 省略
  end
end
#=> nil is not a symbol nor a string (TypeError)