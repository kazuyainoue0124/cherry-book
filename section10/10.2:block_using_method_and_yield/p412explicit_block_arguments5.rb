# 他のメソッドにブロックを引き渡す場合は、引数の手前にも&を付ける
# &を付けないとブロックではなく普通の引数の1つと見なされる

# 引数の手前に&を付けると、ブロックと見なされる
greet_common(texts, &block)

# &なしで呼び出すと、普通の引数の1つと見なされる
greet_common(texts, block)
#=> wrong number of arguments (given 2, expected 1)(ArgumentError)