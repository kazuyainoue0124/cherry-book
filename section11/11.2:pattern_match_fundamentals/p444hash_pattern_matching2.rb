# 車のスペックを自動車の型式別に出力したい
cars = [
  {name: 'The Beatle', engine: '105ps'},
  {name: 'Prius', engine: '98ps', motor: '72ps'},
  {name: 'Tesla', motor: '306ps'},
]

# パターンマッチを使うと次のように書ける
cars.each do |car|
  case car
  in {name:, engine:, motor:}
    puts "Hybrid: #{name} / engine: #{engine} / motor: #{motor}"
  in {name:, engine:}
    puts "Gasoline: #{name} / engine: #{engine}"
  in {name:, motor:}
    puts "EV: #{name} / motor: #{motor}"
  end
end
#=> Gasoline: The Beatle / engine: 105ps
#   Hybrid: Prius / engine: 98ps / motor: 72ps
#   EV: Tesla / motor: 306ps