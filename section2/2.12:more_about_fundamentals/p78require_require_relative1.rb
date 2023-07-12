# Dateクラスは組み込みライブラリではないので、そのままでは使用できない
puts Date.today #=> uninitialized constant Date(NameError)

# dateライブラリを読み込むとDateクラスが使えるようになる
require 'date'
puts Date.today #=> 2023-07-10