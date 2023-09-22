# Rakeタスクにはdescメソッドを使ってタスクの説明を入れることもできる

# タスクの説明を入れる
# rake -T(またはrake --tasks)コマンドを入力すると、タスクの一覧が説明つきで表示される
desc 'テスト用のタスクです。'
task :hello_world do
  puts 'Hello, world!'
end