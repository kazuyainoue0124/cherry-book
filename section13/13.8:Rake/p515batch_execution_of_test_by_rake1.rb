# Rakeではよく使われるいくつかのタスクがあらかじめ用意されている
# 複数のテストコードを一括して実行するRake：：TestTaskを利用する例
require 'rake/testtask'

# testディレクトリ以下にある、_test.rbという名前で終わるファイル全てが実行対象
Rake::TestTask.new do |t|
  t.pattern = 'test/**/*_test.rb'
end

# このタスクに'test'という名前を付けて、デフォルトのタスクに設定
task default: :test