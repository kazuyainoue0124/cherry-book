a = []

while false
  # このコードは常に条件が偽になるので実行されない
  a << 1
end
p a #=> []

# begin ... endで囲むとどんな条件でも最低1回は実行される
begin
  a << 1
end while false
p a #=> [1]