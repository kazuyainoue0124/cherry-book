# arrayパターンの配列は入れ子になっていてもOK
case [1, [2, 3]]
in [a, [b, c]]
  "a=#{a}, b=#{b}, c=#{c}"
end
#=> "a=1, b=2, c=3"