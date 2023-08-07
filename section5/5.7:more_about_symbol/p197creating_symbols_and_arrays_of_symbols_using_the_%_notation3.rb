name = 'Alice'

# %iでは改行文字や式展開の構文が、そのままシンボルになる
p %i(hello\ngood-bye #{name.upcase}) #=> [:"hello\\ngood-bye", :"\#{name.upcase}"]

# %Iでは改行文字や式展開が有効になったうえでシンボルが作られる
p %I(hello\ngood-bye #{name.upcase}) #=> [:"hello\ngood-bye", :ALICE]