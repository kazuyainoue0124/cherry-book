# 値を変更する場合も負のインデックスが使える
a = [1, 2, 3]
a[-3] = -10
pp a #=> [-10, 2, 3]

# 指定可能な負の値よりも小さくなるとエラーが発生する
a[-4] = 0 #=> index -4 too small for array; minimum: -3 (IndexError)