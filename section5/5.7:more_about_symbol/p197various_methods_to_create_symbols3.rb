# シングルクオートの代わりにダブルクオートを使うと、文字列と同じように式展開を使える
name = 'Alice'
puts :"#{name.upcase}" #=> "ALICE"