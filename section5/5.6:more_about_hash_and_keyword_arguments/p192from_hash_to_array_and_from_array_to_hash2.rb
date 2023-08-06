# 配列に対してto_hメソッドを呼ぶと配列をハッシュに変換できる
# このとき変換対象の配列はキーと値の組み合わせ毎に1つの配列に入っていないとダメ
array = [[:japan, 'yen'], [:us, 'dollar'], [:india, 'rupee']]
p array.to_h #=> {:japan=>"yen", :us=>"dollar", :india=>"rupee"}

# ハッシュとして解析不能な配列に対してto_hメソッドを呼ぶとエラーになる
array = [1, 2, 3, 4]
p array.to_h #=> wrong element type Integer at 0 (expected array) (TypeError)