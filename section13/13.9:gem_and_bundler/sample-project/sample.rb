# bundle exec ruby sample.rbを実行するとGemfileで指定したバージョンが使われる
# ruby sample.rbを実行するとGemfileではなくその環境にインストールされている一番新しいバージョンが使われる
require 'faker'
require 'awesome_print'

puts Faker::VERSION   #=> 2.16.0
puts Faker::Name.name #=> "Penelope Leannon"

# apはAwesome Printによって追加されるターミナル出力メソッド
ap ['Alice', 'Bob', 'Carol']
#=> [
#     [0] "Alice",
#     [1] "Bob",
#     [2] "Carol"
#   ]