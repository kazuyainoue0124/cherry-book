# RakeはRubyで作られているビルドツール
# Rubyプログラムを内部DSLとして使用する
# RakeはRakefileという名前のファイルにタスクを定義する

# hello_worldという名前のタスクをRakefileに定義する例
# rake hello_world で実行される
task :hello_world do
  # ブロックの中がタスクとして実行される処理になる
  puts 'Hello, world!'
end