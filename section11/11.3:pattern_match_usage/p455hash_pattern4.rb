# 値にはvalueパターンのように、固定の値や===で比較可能な値を指定できる
case {name: 'Alice', age: 20, gender: :female}
in {name: 'Alice', age: 18.., gender:}
  # :nameの値がAlice、:ageの値が18以上かつ、キーに:genderが含まれている場合にマッチする
  # :genderに対応する値は変数genderに格納される
  "gender=#{gender}"
end
#=> "gender=female"