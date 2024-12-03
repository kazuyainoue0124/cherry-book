# ピン演算子は事前に定義された変数だけでなく、in節で代入された変数を同じin節で参照することもできる
records = [
  [7, 7, 7],
  [6, 7, 5]
]

records.each do |record|
  case record
  in [n, ^n, ^n] # 要素数が3つでなおかつ3つとも同じ値であればマッチ
    puts "all same: #{record}"
  else
    puts "not same: #{record}"
  end
end
#=> all same: [7, 7, 7]
#   not same: [6, 7, 5]