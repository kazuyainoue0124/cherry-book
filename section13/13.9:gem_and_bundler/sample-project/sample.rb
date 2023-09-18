# bundle exec ruby sample.rbを実行するとGemfileで指定したバージョンが使われる
# ruby sample.rbを実行するとGemfileではなくその環境にインストールされている一番新しいバージョンが使われる
require 'faker'

puts Faker::VERSION   #=> 2.16.0
puts Faker::Name.name #=> "Penelope Leannon"
