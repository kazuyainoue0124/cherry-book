# 環境変数と起動時引数を取得して、その内容を出力するサンプル
# exportコマンドをターミナル上で実行すると環境変数を設定できる
name = ENV['MY_NAME']
email = ARGV[0]
age = ARGV[1]

puts "name: #{name} email: #{email}, age: #{age}"