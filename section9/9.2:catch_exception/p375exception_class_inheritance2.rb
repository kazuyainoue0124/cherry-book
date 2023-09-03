# rescue節に例外クラスを指定した場合、捕捉されるのはそのクラス自身とそのサブクラス
# 通常のプログラムで補足するのはStandardErrorクラスかそのサブクラスに限定すべき
begin
  # 例外が起きそうな処理
rescue Exception
  # Exceptionとそのサブクラスが捕捉される。つまりNoMemoryErrorやSystemExitまで捕捉される
end