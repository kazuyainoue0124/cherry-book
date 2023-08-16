# privateの下はprivateメソッド、publicの下はpublicメソッドとなる
# 好きな順番で定義できる
class User
  # ここから下はprivateメソッド
  private

  def foo
  end

  # ここから下はpublicメソッド
  public

  def bar
  end
end