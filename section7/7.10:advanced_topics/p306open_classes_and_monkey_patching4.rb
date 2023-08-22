# 新しいメソッドの追加だけでなく既存のメソッドの上書きもできる
# 既存の実装を上書きして自分が期待する挙動に変更することを「モンキーパッチ」と呼ぶ
# 実際の開発では外部ライブラリ(gem)に軽微な不具合があったり微妙に要件に合わない挙動があったときにモンキーパッチをあてる

# 以下のUserクラスは外部ライブラリで定義されている想定
class User
  def initialize(name)
    @name = name
  end

  def hello
    "Hello, #{@name}"
  end
end

# モンキーパッチをあてる前の挙動を確認する
user = User.new('Alice')
puts user.hello #=> "Hello, Alice"

# helloメソッドにモンキーパッチをあてて独自の挙動を持たせる
class User
  def hello
    "#{@name}さん、こんにちは！"
  end
end

# メソッドの定義を上書きしたのでhelloメソッドの挙動が変わっている！
puts user.hello #=> "Aliceさん、こんにちは！"