# インスタンス変数の場合、未定義の変数を参照するとnilが返るが、クラス変数の場合はエラーとなる
class Product
  # クラス変数の@@nameの定義を削除する
  # @@name = 'Product'

  def self.name
    @@name
  end
end

# 未定義のクラス変数を参照したのでエラーが発生する
puts Product.name #=> uninitialized class variable @@name in Product (NameError)