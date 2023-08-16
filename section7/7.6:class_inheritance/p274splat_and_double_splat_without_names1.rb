# 引数が(*)だけのメソッド定義には２通りの意図がある
class DVD < Product
  # 引数の(*)って何？？
  def initialize(*)
    # 省略
  end
end