# to_hメソッドが登場したのはRuby2.1から
# それ以前はキーと値のペアの配列をHash[]に渡してハッシュに変換していた

# キーと値のペアの配列をHash[]に渡す
array = [[:japan, 'yen'], [:us, 'dollar'], [:india, 'rupee']]
puts Hash[array] #=> {:japan=>"yen", :us=>"dollar", :india=>"rupee"}

# キーと値が交互に並ぶフラットな配列を*付きで渡しても良い
array = [:japan, 'yen', :us, 'dollar', :india, 'rupee']
puts Hash[*array] #=> {:japan=>"yen", :us=>"dollar", :india=>"rupee"}