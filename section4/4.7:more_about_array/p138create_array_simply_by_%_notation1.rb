# []で文字列の配列を作成する
pp ['apple', 'melon', 'orange'] #=> ["apple", "melon", "orange"]

# %wで文字列の配列を作成する(!で囲む場合)
pp %w!apple melon orange! #=> ["apple", "melon", "orange"]

# %wで文字列の配列を作成する(丸カッコで囲む場合)
pp %w(apple melon orange) #=> ["apple", "melon", "orange"]

# 空白文字（スペースや改行）が連続した場合も1つの区切り文字と見なされる
pp %w(
  apple
  melon
  orange
)
#=> ["apple", "melon", "orange"]