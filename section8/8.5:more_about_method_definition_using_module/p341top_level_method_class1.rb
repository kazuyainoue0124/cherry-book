# トップレベルのselfはObjectクラスのインスタンスを表す
puts self.class #=> Object

# トップレベルにメソッドを定義すると、どのクラスに定義されたことになる？
# 正解はObjectクラス、定義されたメソッドの可視性はprivateになる
def greet
  'Hi!'
  puts self.class
end

# 上記のコードは次のコードを書いたのと同じ意味になる
class Object
  private

  def greet
    'Hi!'
  end
end

# private_instance_methodsはそのクラスで定義されているprivateメソッド名の一覧を配列で返す
# また、grepメソッドは引数にマッチした要素を配列で返す
p Object.private_instance_methods.grep(:greet)
#=> [:greet]