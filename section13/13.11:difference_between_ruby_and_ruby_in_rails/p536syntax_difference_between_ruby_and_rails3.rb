# Railsではビューの中で使われるyieldはレイアウトのビューから特定のビューを挿入するために使う命令
# Rubyにおける「ブロックを利用するメソッドの中で使うyield」とは別物

<!DOCTYPE html>
<html>
  <head></head>
  <body>
    <%= yield %>
  </body>
</html>