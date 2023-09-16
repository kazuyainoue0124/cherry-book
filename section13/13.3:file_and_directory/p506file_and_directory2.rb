# 以下はファイルを読み書きする簡単なコード例

# libディレクトリにあるfizz_buzz.rbの行数をターミナルに表示する
File.open('./lib/fizz_buzz.rb', 'r') do |f|
  puts f.readlines.count
end

# libディレクトリにhello_world.txtを作成して文字を書き込む
File.open('./lib/hello_world.txt', 'w') do |f|
  f.puts 'Hello, world!'
end