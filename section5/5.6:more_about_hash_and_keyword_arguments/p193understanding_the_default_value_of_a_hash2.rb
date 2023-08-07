# nil以外の値を返したいときは、Hash.newでハッシュを作成し、引数にデフォルト値を指定する
# キーがなければ'hello'を返す
h = Hash.new('hello')
puts h[:foo] #=> "hello"