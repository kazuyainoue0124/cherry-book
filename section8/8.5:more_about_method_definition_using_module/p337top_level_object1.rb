# Rubyではクラス構文やモジュール構文に囲まれていない一番外側の部分のことをトップレベルという
# irbを起動した直後にいる場所もトップレベル
# トップレベルにはmainという名前のObjectクラスのインスタンスがselfとして存在している

# ここはトップレベル
p self         #=> main
p self.class   #=> Object

class User
  # ここはクラスの内部
  p self       #=> User
  p self.class #=> Class
end