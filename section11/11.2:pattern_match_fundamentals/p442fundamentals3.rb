# パターンマッチではなくcase文で再現すると次のようになる
records = [
  [2021],
  [2019, 5],
  [2017, 11, 25],
]

require 'date'

records.map do |record|
  case record.size
  when 1
    y = record[0]
    Date.new(y, 1, 1)
  when 2
    y = record[0]
    m = record[1]
    Date.new(y, m, 1)
  when 3
    y = record[0]
    m = record[1]
    d = record[2]
    Date.new(y, m, d)
  end
end
#=> [#<Date: 2021-01-01 ((2459216j,0s,0n),+0s,2299161j)>,
#    #<Date: 2019-05-01 ((2458605j,0s,0n),+0s,2299161j)>,
#    #<Date: 2017-11-25 ((2458083j,0s,0n),+0s,2299161j)>]