# Objectクラスはほぼ全てのクラスのスーパークラスであり、スーパークラスのメソッドはprivateメソッドであっても
# サブクラスから呼び出せるため、トップレベルに定義したメソッドは事実上のグローバルメソッドとなる
def greet
  'Hi!'
end

class Foo
  def bar
    # トップレベルで定義したメソッドを呼び出す
    greet
  end
end

puts Foo.new.bar #=> "Hi!"