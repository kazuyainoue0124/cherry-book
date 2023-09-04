# Procオブジェクトはブロックと異なりオブジェクトとして扱える
# そのため変数に入れて別のメソッドに渡したり、Procオブジェクトに対してメソッドを呼び出せる

# 引数のblockはProcオブジェクトである
def greet(&block)
  # blockのクラス名を表示する
  puts block.class

  puts 'おはよう'
  text = block.call('こんにちは')
  puts text
  puts 'こんばんは'
end

greet do |text|
  text * 2
end
#=> Proc
#   おはよう
#   こんにちはこんにちは
#   こんばんは