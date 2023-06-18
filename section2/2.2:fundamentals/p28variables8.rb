# 互いに無関係な値を多重代入すると、理解しづらいコードになる
name, age, height = 'Alice', 20, 160

# こういう場合は別々に変数に代入していく方が良い
name = 'Alice'
age = 20
height = 160