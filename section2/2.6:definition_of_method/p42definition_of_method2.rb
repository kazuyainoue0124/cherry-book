# メソッド名はスネークケースで書く
def hello_world
    'Hello, world!'
end
puts hello_world

# キャメルケースは使わない（エラーにはならないが一般的ではない）
def helloWorld
    ' Hello, world!'
end
puts helloWorld

# アンダースコアでメソッド名を書き始める（アンダースコアで始まることは少ない）
def _hello_world
    'Hello, world!'
end
puts _hello_world

# メソッド名に数字を入れる
def hello_world_2
    'Hello, world!!'
end
puts hello_world_2

# 数字から始まるメソッド名は使えない（エラーになる）
def 2_hello_world
    'Hello, world!!'
end
puts 2_hello_world

# メソッド名をひらがなにする（一般的ではない）
def あいさつする
    'はろー、わーるど！'
end

# ひらがなのメソッドを呼び出す
puts あいさつする