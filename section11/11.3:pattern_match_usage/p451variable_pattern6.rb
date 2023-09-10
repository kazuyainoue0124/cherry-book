# in節に指定できる変数はローカル変数のみ
# in節でインスタンス変数を使おうとすると構文エラーになる
case 1
in @n
  "@n=#{@n}"
end
#=> syntax error, unexpected instance variable (SyntaxError)