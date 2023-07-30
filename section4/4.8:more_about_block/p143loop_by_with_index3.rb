# with_indexメソッドはEnumeratorクラスのインスタンスメソッド
# 繰り返し処理を行うメソッドの大半はブロックを省略するとEnumeratorオブジェクトを返す
fruits = ['apple', 'orange', 'melon']

# ブロックなしでメソッドを呼ぶとEnumeratorオブジェクトが返る。よってwith_indexメソッドが呼び出せる
p fruits.each #=> #<Enumerator: ["apple", "orange", "melon"]:each>