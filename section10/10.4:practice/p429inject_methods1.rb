# injectメソッドはたたみ込み演算を行うEnumerableモジュールのメソッド、配列やハッシュに使える
# ブロックの第1引数には初回のみinjectメソッドの引数が、2回目以降は前回のブロックの戻り値が入る
# ブロックの第2引数には配列の各要素が順番に入る
numbers = [1, 2, 3, 4]
sum = numbers.inject(2) { |result, n| result + n }
puts sum #=> 12