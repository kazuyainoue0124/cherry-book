# タスクの数が増えてきたときは、名前空間（ネームスペース）を使ってタスクを整理できる

# 名前空間を使ってタスクをグループ分けする
# 名前空間付きのタスクを実行するときは、コロン(:)を使って名前空間とタスクを区切る
namespace :my_tasks do
  desc 'テスト用のタスクです。'
  task :hello_world do
    puts 'Hello, world!'
  end
end