# ->がラムダを作るための記号
->(a, b) { a + b }

# 引数のリストに使っている()は省略可能
-> a, b { a + b }

# 引数がなければ全て省略できる
-> { 'Hello!' }

# {}は改行させてもOK
->(a, b) {

}

# {}の代わりにdo...endを使うことも可能
->(a, b) do
  a + b
end

# Proc.newと同様に引数のデフォルト値を持たせることもできる
->(a = 0, b = 0) { a + b }