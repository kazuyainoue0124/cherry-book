# 車のスペックを自動車の型式別に出力したい
cars = [
  {name: 'The Beatle', engine: '105ps'},
  {name: 'Prius', engine: '98ps', motor: '72ps'},
  {name: 'Tesla', motor: '306ps'},
]

# パターンマッチを使わないと次のようになる
cars.each do |car|
  if car.key?(:engine) && car.key?(:motor)
    puts "Hybrid: #{car[:name]} / engine: #{car[:engine]} / motor: #{car[:motor]}"
  elsif car.key?(:engine)
    puts "Gasoline: #{car[:name]} / engine: #{car[:engine]}"
  elsif car.key?(:motor)
    puts "EV: #{car[:name]} / motor: #{car[:motor]}"
  end
end
#=> Gasoline: The Beatle / engine: 105ps
#   Hybrid: Prius / engine: 98ps / motor: 72ps
#   EV: Tesla / motor: 306ps