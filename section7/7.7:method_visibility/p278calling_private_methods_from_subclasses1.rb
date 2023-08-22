# Rubyの場合、privateメソッドはそのクラスだけではなくサブクラスでも呼び出せる
# プログラミング言語によってはサブクラスから呼び出せない仕様もある
class Product
  private

  # これはprivateメソッド
  def name
    'A great movie'
  end
end

class DVD < Product
  def to_s
    # nameはスーパークラスのprivateメソッド
    "name: #{name}"
  end
end

dvd = DVD.new
# 内部でスーパークラスのprivateメソッドを呼んでいるがエラーにはならない
puts dvd.to_s #=> "name: A great movie"