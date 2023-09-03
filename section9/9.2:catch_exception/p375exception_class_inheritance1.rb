# 全ての例外クラスはExceptionクラスを継承しており、その下に
# StandardErrorクラスとそれ以外の例外がぶら下がっている
# rescue節に何もクラスを指定しなかった場合に捕捉されるのはStandardErrorクラスとそのサブクラスだけ
begin
  # 例外が起きそうな処理
rescue
  # StandardErrorとそのサブクラスのみ捕捉される
end