# 例外が発生しなかった場合に実行されるelse節を書くこともできる
# else節はrescue節とensure節の間に置く（ensure節は省略可）
begin
  # 例外が発生するかもしれない処理
rescue
  # 例外が発生した場合の処理
else
  # 例外が発生しなかった場合の処理
ensure
  # 例外の有無にかかわらず実行される処理
end