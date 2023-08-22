# 静的型付け言語の場合、コンパイル時にオブジェクトのデータ型やクラスの継承・インターフェースを確認する
# 動的型付け言語の場合、気にするのは「コードが実行するその瞬間に、そのメソッドが呼び出せるか否か」だけ
# 「そのオブジェクトのクラス（データ型）が何か」は確認しない
# 「オブジェクトのクラスが何であろうとそのメソッドが呼び出せれば良し」とするプログラミングスタイルを「ダックタイピング」と呼ぶ

# display_nameメソッドは引数で渡されたオブジェクトがnameメソッドさえ持っていれば、それ以外は気にしない
def display_name(object)
  puts "Name is <<#{object.name}>>"
end

# 全く別のオブジェクトをdisplay_nameメソッドに渡せる
class User
  def name
    'Alice'
  end
end

class Product
  def name
    'A great movie'
  end
end

# UserクラスとProductクラスはお互いに無関係なクラスだが、display_nameメソッドは何も気にしない
user = User.new
display_name(user)    #=> Name is <<Alice>>

product = Product.new
display_name(product) #=> Name is <<A great movie>>